<?php
  /* Template Name: Home */

  get_header();
?>
  <?php if (get_field('cover_carroussel')): ?>
    <div class="cover"> 
      <?php while (have_rows('cover_carroussel')) : the_row(); ?>
        <div class='image-item' style='background-image:url(<?php echo get_sub_field('background') ?>)'> 
          <div class="logo" style="background-image:url(<?php echo get_sub_field('logo') ?>"></div>
        </div>
      <?php endwhile; ?>
    </div>
  <?php endif; ?>

  <div class="window">

    <?php if (get_field('window')): ?>
      <div class="window-items"> 
        <?php while (have_rows('window')) : the_row(); ?>
          <a href="<?php echo get_sub_field('window-item-link'); ?>"><div class='window-item' style='background-image:url(<?php echo get_sub_field('window-item'); ?>)'>
          </div></a>
        <?php endwhile; ?>
      </div>
    <?php endif; ?>

  </div>

<?php
	get_footer();
?>
