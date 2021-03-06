<?php
  get_header();
?>

<div class="cover">
  <div class="campaign-info">
    <h1 class="campaign-name section-name"><?php the_title() ?></h1>
    <p class="campaign-about"><?php echo get_field( 'about' ) ?></p>
    <div class="call-to-action black">
      <div class="cta_text"><?php echo the_field( 'cta_text' ); ?></div>
      <div class="cta_arrow"></div>
    </div>
  </div>
    
</div>

<ul class="images">
  <?php if( have_rows('images')): ?>
    <?php while( have_rows('images')) : the_row(); ?>
      <img class="image" src="<?php the_sub_field( 'image'); ?>">
    <?php endwhile; ?>
  <?php else : endif ?>
</ul>
  
<?php 
	get_footer();
?>
