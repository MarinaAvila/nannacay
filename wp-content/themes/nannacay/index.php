<?php
  /* Template Name: Home */

  get_header();
?>

  <div class="cover" style="background-image:url('<?php echo get_field('cover') ?>"> 
    <div class="logo" style="background-image:url(<?php echo get_field('logo') ?>"></div>
  </div>

<?php
	get_footer();
?>
