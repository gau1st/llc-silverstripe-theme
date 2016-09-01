<% base_tag %>
<title>$Title &raquo; $SiteConfig.Title</title>
<meta name="description" content="LooLooChoo brings traditional Indonesian cultures to life with beautiful images, fun interactive, and great music through digital mobile apps. " />
<meta name="keywords" content="iPad, digital content, Indonesia traditional folklore" />
<meta property="og:title" content="LooLooChoo The Official Website" />
<meta property="og:site_name" content="LooLooChoo"/>
<meta property="og:image" content="http://looloochoo.com/themes/looloochoo/images/logo-llc.png"/> 
<link rel="shortcut icon" href="/favicon.ico" />
		
<% require themedCSS(layout) %> 
		
<!--[if IE 6]>
	<style type="text/css">
	 @import url(/themes/looloochoo/css/ie6.css);
	</style> 
<![endif]-->
		
<!--[if IE 7]>
	<style type="text/css">
	 @import url(/themes/looloochoo/css/ie7.css);
	</style> 
<![endif]-->

<!-- require javascript(themes/looloochoo/js/jquery.js) -->
<script src="/themes/looloochoo/js/jquery.min.js" type="text/javascript"></script> 

<!-- include Cycle plugin -->
<script type="text/javascript" src="/themes/looloochoo/js/jquery.cycle.all.latest.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   	jQuery('.testimonial-content')
	.before('<div id="nav">')
	.cycle({
       	fx: 'fade', // choose your transition type, ex: fade, scrollUp, scrollRight, shuffle
		prev:    '.prev',
		next:    '.next'
   		});
});
</script>

<script src="/themes/looloochoo/js/jquery.twitterfeed.js" type="text/javascript"></script> 
<link rel="stylesheet" type="text/css" media="all" href="/themes/looloochoo/css/elastic.css" />
<script src="/themes/looloochoo/js/elastic.js" type="text/javascript" language="javascript" charset="utf-8"></script>