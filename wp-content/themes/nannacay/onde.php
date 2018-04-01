<?php
  /* Template Name: Onde */

  get_header();
?>

<div class="cover" style="background-image:url('<?php echo get_field('cover') ?>"> 
  <div class="section-info">
    <h1 class="section-name">visite nosso studio store</h1>
    <p class="address">Av Ataulfo de Paiva 658/402 Leblon, Rio de Janeiro - RJ</p>
    <div class="call-to-action">
      <div class="cta_text"><?php echo the_field( 'cta_text' ); ?></div>
      <div class="cta_arrow"></div>
    </div>
  </div>
</div>

<div class="stores-info"> 

  <div class="stores-image"></div>

  <div class="stores-lists">
    <div class="section">Onde</div>
    
    <div class="lists">
      <div class="first-group">

        <?php if (get_field('list')): ?>
          <div class="stores-list"> 
            <?php while (have_rows('list')) : the_row(); ?>
              <div class="coutry"><?php echo get_sub_field( 'country' ); ?></div>
              <?php echo get_sub_field( 'address' ); ?>
            <?php endwhile; ?>
          </div>
        <?php endif; ?>

      </div>

      <div class="second-group">

        <?php if (get_field('list_other')): ?>
          <div class="stores-list"> 
            <?php while (have_rows('list_other')) : the_row(); ?>
              <div class="coutry"><?php echo get_sub_field( 'country_other' ); ?></div>
              <?php echo get_sub_field( 'address_other' ); ?>
            <?php endwhile; ?>
          </div>
        <?php endif; ?>

        <?php if (get_field('extra_info')): ?>
          <div class="extra-list"> 
            <?php while (have_rows('extra_info')) : the_row(); ?>
              <div class="extra-title"><?php echo get_sub_field( 'title' ); ?></div>
              <?php echo get_sub_field( 'info' ); ?>
            <?php endwhile; ?>
          </div>
        <?php endif; ?>

      </div>
    </div>
    
  </div>
</div>
  
<?php 
	get_footer();
?>
