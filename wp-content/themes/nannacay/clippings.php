<?php
  /* Template Name: Clippings */

  get_header();
?>

<div class="cover" style="background-image:url('<?php echo get_field('cover') ?>"> 
  <h1 class="section-name">Clippings</h1>
</div>

<ul class="clippings">
  <?php if( have_rows('clippings')): ?>
    <?php while( have_rows('clippings')) : the_row(); ?>
      <li class="clipping">
        <img class="clipping_image" src="<?php the_sub_field( 'image'); ?>">
        <div class="clipping_text">
          <p class="magazine"><?php the_sub_field( 'magazine' ); ?></p>
          <p class="date"><?php the_sub_field( 'date' ); ?></p>
        </div>
        <div class="modal"> 
          <div class="info">
            <div class="close"></div>
            <img class="clipping_image_modal" src="<?php the_sub_field( 'image'); ?>">
            <div class="clipping_text">
              <p class="magazine"><?php the_sub_field( 'magazine' ); ?></p>
              <p class="date"><?php the_sub_field( 'date' ); ?></p>
            </div>
          </div>
        </div>
      </li>
    <?php endwhile; ?>
  <?php else : endif ?>
</ul>
  
<?php 
	get_footer();
?>
