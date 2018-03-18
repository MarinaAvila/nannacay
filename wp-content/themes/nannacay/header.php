<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nannacay</title>
  <link rel="stylesheet" type="text/css" href="<?php echo CSS; ?>style.css" />
</head>
<body <?php body_class(); ?>>
  <header id="header">
    <div class="social-media">
      <a class='instagram' href="https://www.instagram.com/nannacay/"></a>
      <a class="facebook" href="https://www.facebook.com/nannacay.creativehands/"></a>
    </div>
    <a class="logo-menu" href="<?php echo get_home_url() ?>"></a>
    <div class="menu-lines">
      <div class="line one"></div>
      <div class="line two"></div>
      <div class="line three"></div>
    </div> 
    <div class="menu">
      <ul class="menu-list">
        <li><a class="menu-item" href="<?php echo site_url( 'home' ); ?>">home</a></li>
        <li><a class="menu-item" href="<?php echo site_url( 'quem-somos' ); ?>">quem somos</a></li>
        <li><a class="menu-item"  href="<?php echo site_url( 'onde' ); ?>">onde</a></li>
        <li><a class="menu-item" href="<?php echo site_url( 'clippings' ); ?>">clippings</a></li>
        <li><a class="menu-item" href="<?php echo site_url( 'campanhas' ); ?>">campanhas</a></li>
      </ul> 
    </div>
  </header>
