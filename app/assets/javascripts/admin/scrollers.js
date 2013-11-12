var scrollers = [];
var mainYScroller;

$(function()
{
	//document.addEventListener('touchmove', function(e){ e.preventDefault(); });
	var xScrollers = document.getElementsByClassName("scroll-x");
    for (var i = 0; i < xScrollers.length; i++)
		scrollers.push(new iScroll(xScrollers[i], { 
			vScroll: false, 
			hideScrollbar: true,
			onBeforeScrollStart: function (e) {
				var target = e.target;
				while (target.nodeType != 1) target = target.parentNode;

				if (target.tagName != 'SELECT' && target.tagName != 'INPUT' && target.tagName != 'TEXTAREA')
					e.preventDefault();
			} 
		}));

	var yScrollers = $('.scroll-y').not('#mainYScroller');
    $.each(yScrollers, function(i,v)
	{
    	var scroller = new iScroll($(v).attr('id'),
    	{
	    	hScroll: false, 
	    	hideScrollbar: true,
	    	onBeforeScrollStart: function (e) 
	    	{
				var target = e.target;
				while (target.nodeType != 1) target = target.parentNode;
				
				if (target.tagName != 'SELECT' && 
					target.tagName != 'INPUT' && 
					target.tagName != 'TEXTAREA' &&
					$(target).parents('table-responsive').size() == 0)
					e.preventDefault();
			}
	    });
    	scrollers.push(scroller);
	});

    mainYScroller = new iScroll('mainYScroller',
  	{
    	zoom: true,
    	hScroll: false, 
    	hideScrollbar: true,
    	onBeforeScrollStart: function (e) 
    	{
			var target = e.target;
			while (target.nodeType != 1) target = target.parentNode;

			if ($('input:focus, textarea:focus').length) $('input:focus, textarea:focus').blur();

			if ($(target).parents('.table-responsive').size() > 0 ||
				$(target).parents('.google-visualization-table-table').size() > 0 ||
				$(target).parents('#calendar').size() > 0 ||
				$(target).is('.btn'))
				{
					return true;
				}
				
			if (target.tagName != 'SELECT' && 
				target.tagName != 'INPUT' && 
				target.tagName != 'TEXTAREA')
				e.preventDefault();
		},
		onScrollEnd: function()
		{
			//if (mainYScroller.enabled == false) mainYScroller.enable();
		}
    });
    scrollers['mainYScroller'] = mainYScroller;
});