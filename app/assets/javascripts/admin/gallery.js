$(function()
{
	var $container = $('.gallery.paper ul');
	$container
		.imagesLoaded( function(){
			$container.masonry({
				gutterWidth: 20,
		    	itemSelector : 'li',
		    	columnWidth: $('.gallery.paper li:first').width()
		  	});
		});
});

Modernizr.load({
	test: Modernizr.csstransforms3d && Modernizr.csstransitions,
	yep : ['/assets/admin/theme/scripts/paperGallery/jquery.paperGallery.js'],
	nope: '/assets/admin/theme/scripts/paperGallery/fallback.css',
	callback : function( url, result, key ) 
	{
		if( url === '/assets/admin/theme/scripts/paperGallery/jquery.paperGallery.js' ) {
			$( '.gallery.paper' ).paperGallery();
		}
	}
});