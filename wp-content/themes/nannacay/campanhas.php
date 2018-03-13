<?php
  /* Template Name: Campanhas */

  get_header();
?>

<div class="cover" style="background-image:url(<?php echo the_field( 'cover' ); ?>)">
  <div class="section-info">
    <h1 class="section-name">campanhas</h1>

    <?php
      $args = array(
        'post_type' => 'post',
        'posts_per_page' => 9999
      );
      $post_query = new WP_Query($args);
    ?>

    <ul class="campaigns">
      <?php if ( $post_query->have_posts() ) : ?>
        <?php while ( $post_query->have_posts() ) : $post_query->the_post(); ?>
        <li class='jersey-card'>
          <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
        </li>
        <?php endwhile; ?>
        <?php wp_reset_postdata(); ?>
      <?php endif; ?>
    </ul>
 </div>
</div>
  
<?php 
	get_footer();
?>
