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
      <a class="facebook" href=""></a>
      <a class='instagram' href=""></a>
    </div>
    <div class="logo-menu"></div>
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
