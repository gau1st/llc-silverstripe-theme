<div class="unit horizontal-center layout on-1 columns" style="width:100%;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns" style="width:960px;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns header-2">
		
		<div class="top-line">
		   
		</div>
		
		<% include Header %>
		
	</div>
	
	<div class="unit horizontal-center layout on-1 columns main-content-2">
		<div class="left-side-area">
			<div class="menu-left">
				<div class="menu-left-icon" style="background:url('$Parent.Icon.URL') no-repeat;">
				</div>	
				<div class="menu-left-text">
						$Parent.Title
				</div>
				<div class="link-left-menu">
					<ul>
						<% control Menu(2) %>
						      <li class="$LinkingMode">> <a href="$Link" title="Go to the &quot;{$Title}&quot; page">$MenuTitle</a></li>
						<% end_control %>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="center-side-area">
			<div class="main-image-content">
				<img src="$HeadImage.URL" alt="About Us">
			</div>
			<div class="content-title">
				$TitleContent
			</div>
			<div class="the-content">
				<p>
					$Content
					
				</p>
			</div>
		</div>
		
		<div class="right-side-area">
			<div class="featured-2">
				<div class="featured-2-icon" style="background:url('$IconFeatured.URL') no-repeat;">
				</div>	
				<div class="featured-2-text">
					$TitleFeatured
				</div>
				<div class="featured-title">
					<% if TargetUrlFeatured %>
						<a href="$TargetUrlFeatured">$TitleContentFeatured</a>
					<% else %>
						$TitleContentFeatured
					<% end_if %>	
				</div>
				<div class="featured-content">
						$ContentFeatured
				</div>
			</div>
		</div>
	</div>

	<% include Footer %>
	
	</div>
</div>