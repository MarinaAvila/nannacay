<?php
  /* Template Name: Clippings */

  get_header();
?>

<!-- <div class="cover" style="background-image:url('<?php echo get_field('cover') ?>"> 
  <h1 class="section-name"><?php the_title(); ?></h1>
  <div class="call-to-action black">
    <div class="cta_text"><?php echo the_field( 'cta_text' ); ?></div>
    <div class="cta_arrow"></div>
  </div>
</div> -->

<ul class="clippings">
  <div class="close">
    <div class="close_icon"></div>
  </div>
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
