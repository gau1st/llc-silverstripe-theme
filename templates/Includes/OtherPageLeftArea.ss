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