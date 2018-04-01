<?php

  define( 'URL', get_bloginfo( 'url' ) );
  define( 'THEME', get_template_directory_uri() );
  define( 'CSS', THEME . '/build/css/' );
  define( 'JS', THEME . '/build/js/' );
  define( 'IMG', THEME . '/assets/images/' );

  add_filter( 'acf/fields/wysiwyg/toolbars' , 'my_toolbars'  );
  function my_toolbars( $toolbars )
  {
    $toolbars['Very Simple' ] = array();
    $toolbars['Very Simple' ][1] = array( 'italic' );

    // Edit the "Full" toolbar and remove 'code'
    // - delet from array code from http://stackoverflow.com/questions/7225070/php-array-delete-by-value-not-key
    if( ($key = array_search('code' , $toolbars['Full' ][2])) !== false )
    {
        unset( $toolbars['Full' ][2][$key] );
    }

    // remove the 'Basic' toolbar completely
    unset( $toolbars['Basic' ] );

    // return $toolbars - IMPORTANT!
    return $toolbars;
  }