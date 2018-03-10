'use strict';

var gulp = require( 'gulp' );
var cleanCSS = require('gulp-clean-css');
var concat = require( 'gulp-concat' );
var gulpif = require( 'gulp-if' );
var sass = require( 'gulp-sass' );
var sourcemaps = require( 'gulp-sourcemaps' );
var uglify = require( 'gulp-uglify' );
var del = require('del');

var themePath = './wp-content/themes/nannacay';
var isProduction = false;

gulp.task( 'sass', function() {
  gulp.src( themePath + '/src/scss/style.scss' )
    .pipe( gulpif ( !isProduction, sourcemaps.init() ) )
    .pipe( sass().on( 'error', sass.logError ) )
    .pipe( gulpif( isProduction, cleanCSS( { compatibility: 'ie8' } ) ) )
    .pipe( gulpif( !isProduction, sourcemaps.write( './' ) ) )
    .pipe( gulp.dest( themePath + '/build/css' ) );
  });

gulp.task( 'js', function() {
  gulp.src([
    './node_modules/animejs/anime.js',
    './node_modules/jquery/dist/jquery.js',
    themePath + '/src/js/libs/**/*.js',
    themePath + '/src/js/components/**/*.js',
    themePath + '/src/js/pages/**/*.js',
    themePath + '/src/js/**/*.js'
  ])
  .pipe( gulpif( !isProduction, sourcemaps.init() ) )
  .pipe( concat( 'script.js' ) )
  .pipe( gulpif( isProduction, uglify() ) )
  .pipe( gulpif( !isProduction, sourcemaps.write( './' ) ) )
  .pipe( gulp.dest( themePath + '/build/js' ) );
});

gulp.task( 'set:production', function () {
  isProduction = true;
});

gulp.task( 'clean:map', function () {
  return del([
    themePath + '/build/**/*.map'
  ]);
});

gulp.task( 'default', ['sass', 'js'] );

gulp.task( 'watch', ['default'], function() {
  gulp.watch( themePath + '/src/scss/**/*.scss', ['sass'] );
  gulp.watch( themePath + '/src/js/**/*.js', ['js'] );
});

gulp.task( 'production', ['set:production', 'default', 'clean:map'] );
