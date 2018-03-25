<?php
  /* 
    Template Name: Produto
    Template Post Type: post, page, product
  */

  get_header();
?>

<div class="product">
  
  <div class="product-image">
    <img src="<?php echo get_field( 'product_image' ); ?>">
  </div>
  
  <div class="product-info"> 
    <h1 class="product-name"><?php the_title(); ?></h1>
    <div class="procuct-price"><?php echo get_field( 'price' ); ?></div>

    <?php if( get_field( 'plots' )) { ?>
      <div>ou</div>
      <div class="procuct-plots"><?php echo get_field( 'plots' ); ?></div>
    <?php } ?>

    <div class="shopfy-button"><?php echo get_field( 'buy_button' ); ?></div>

    <?php if( get_field( 'about_product' )) { ?>
      <div class="info-title">Descrição</div>
      <?php echo get_field( 'about_product' ); ?>
    <?php } ?>

    <?php if( get_field( 'dimesions' )) { ?>
      <div class="info-title">Dimensões</div>
      <div class="dimensions">
        <ul class="parameter-list">
          <?php if( have_rows('dimesions')): ?>
            <?php while( have_rows('dimesions')) : the_row(); ?>
              <?php the_sub_field( 'parameter'); ?>
            <?php endwhile; ?>
          <?php else : endif ?>
        </ul>
        <ul class="value-list">
          <?php if( have_rows('dimesions')): ?>
            <?php while( have_rows('dimesions')) : the_row(); ?>
              <?php the_sub_field( 'value'); ?>
            <?php endwhile; ?>
          <?php else : endif ?>
        </ul>
      </div>
    <?php } ?>

    <?php if( get_field( 'tips' )) { ?>
      <div class="info-title">Dicas de uso</div>
      <ul class="value-list">
        <?php if( have_rows('tips')): ?>
          <?php while( have_rows('tips')) : the_row(); ?>
            <?php the_sub_field( 'tip'); ?>
          <?php endwhile; ?>
        <?php else : endif ?>
      </ul>
    <?php } ?>

  </div>
</div>
  
<?php 
	get_footer();
?>