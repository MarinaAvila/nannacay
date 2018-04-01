<?php

  /* Template Name: Termos */

  get_header();
?>

<div class="terms">

  <h2 class="title">Termos de Uso</h2>
  <?php echo the_field( 'terms' ) ?>
  <h2 class="title">Trocas e Devoluções</h2>
  <?php echo the_field( 'change' ) ?>
  <h2 class="title">Fale Conosco</h2>
  <?php echo the_field( 'fale_conosco' ) ?>

</div>


  
<?php 
	get_footer();
?>
