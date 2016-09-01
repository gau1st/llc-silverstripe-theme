<div class="unit horizontal-center layout on-1 columns" style="width:100%;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns" style="width:960px;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns header">
		
		<% control GetBanner %>
		<div class="featured-images" style="background:url('$MainImage.URL') no-repeat;">
<% if TargetUrl %>
<div style="position:absolute;width:139px;height:83px;margin-left:821px;">  
			    	<a href="$TargetUrl" target="blank"><img src="themes/looloochoo/images/button-appstore.png"></a>
</div>
<% end_if %>
		<% if VideoUrl %>
			  <div class="button-watch-demo">  
			    	<a href="$VideoUrl" target="blank"> </a>
              </div>
		<% end_if %>
	
		</div>
		<% end_control %>
		
		
		
		
		<% include Header %>
		
		<div class="feedback-area">
				<div class="text-body">$TalkWithUsContent</div>
				<div class="link-feedback">
					<ul>
						<li>> <a href="$Url1">$Url1Text</a></li>
						<li>> <a href="$Url2">$Url2Text</a></li>
					</ul>
				</div>
		</div>
		
	</div>
	
	<div class="unit horizontal-center layout on-1 columns main-content">
		<div class="testimonial">
			<div class="testimonial-icon">
			</div>	
			<div class="testimonial-title">
				What They Say
			</div>
			<div class="testimonial-content">
				<% control GetTestimonials %>
				<blockquote>
					<p>"$Testi"<br /><br />
				    <cite>$By</cite>
					</p>
				</blockquote>
				<% end_control %>
			</div>
			
			<div class="prev">  
			    	<a href="#"></a> 
            </div>

			<div class="next">  
					<a href="#"></a>
            </div>
			

			
		</div>
		
		<div class="intro-area">
			<div class="intro-title">
				$HeadlineTitle
			</div>
			<div class="intro-body">
				$HeadlineContent
			</div>
		</div>
		
		<% control GetFeatured %>
		<div class="featured">
			<div class="featured-icon" style="background:url('$Icon.URL') no-repeat;">
			</div>	
			<div class="featured-text">
				$Title
			</div>
			<div class="featured-title">
				<% if TargetUrl %>
					<a href="$TargetUrl">$TitleContent</a>
				<% else %>
					$TitleContent
				<% end_if %>
			</div>
			<div class="featured-content">
				$Content
			</div>
		</div>
		<% end_control %>
	</div>

	<% include Footer %>
	
	</div>
</div>