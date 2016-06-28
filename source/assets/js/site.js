// site: middleman-wdt.lh

//var $ = jQuery.noConflict();
$(document).ready(function($) {
	'use strict';

	/* When 'ready' happened? */
	//alert("document ready occurred!");

	/* ---------------------------------------------------------------------- */
	/*  Fixed header when scrolled
	/* ---------------------------------------------------------------------- */
	$(window).bind('scroll', function() {
		if ($(window).scrollTop() > 50) {
			$('.header').addClass('sticky');
		}
		else {
			$('.header').removeClass('sticky');
		}
	});


	/* ---------------------------------------------------------------------- */
	/* Search box toggle at Header
	/* ---------------------------------------------------------------------- */
	$('.search-box-trigger').click(function(e) {
		e.preventDefault();

		$(this).find('i').toggleClass('fa-times');
		$('.search-box').toggleClass("active");
	});


	/* ---------------------------------------------------------------------- */
	/*  Smooth page scroll to selected part
	/* ---------------------------------------------------------------------- */
	$('.scrollto').on('click', function(e){
		//store hash
		var target = this.hash;
		e.preventDefault();
		
		$('body').scrollTo(target, 800, {offset: -70, 'axis':'y', easing:'easeOutQuad'});
		//Collapse mobile menu after clicking
		if ($('.navbar-collapse').hasClass('in')){
			$('.navbar-collapse').removeClass('in').addClass('collapse');
		}
	});

});


// Page Loader
// $(window).on("load resize scroll", function() {
$(window).load(function(){

	/* When 'load' happend? */
	//alert("window load occurred!");
	
	$('#page-loader').fadeOut();
	

	/* ---------------------------------------------------------------------- */
	/*  Scroll to top
	/* ---------------------------------------------------------------------- */
	$(window).scroll(function(){
		if ($(this).scrollTop() > 500) {
			 $('.scroll-to-top').fadeIn(400);
		} else {
			$('.scroll-to-top').fadeOut(400);
		}
	});
	
	$('.scroll-to-top').click(function(e){
		e.preventDefault();
		$('html, body').animate({scrollTop : 0},400);
		return false;
	});

});