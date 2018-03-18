<?php
  /* Template Name: Home */

  get_header();
?>

<div class="home-slider">

  <?php if ( have_rows( 'cover_slider' ) ): ?>
    <?php while( have_rows( 'cover_slider' ) ): the_row() ?>

      <div class="cover" style="background-image:url('<?php echo get_sub_field('cover') ?>"> 
        <div class="logo" style="background-image:url(<?php echo get_sub_field('logo') ?>"></div>
      </div>

    <?php endwhile; ?>
  <?php endif; ?>
</div>

<?php 
	get_footer();
?>
