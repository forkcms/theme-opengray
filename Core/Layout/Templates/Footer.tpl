<footer id="footer" class="clearfix">
	<ul>
		<li>&copy; {$now|date:'Y'} {$siteTitle}</li>
		{iteration:footerLinks}
			<li{option:footerLinks.selected} class="selected"{/option:footerLinks.selected}>
				<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
					{$footerLinks.navigation_title}
				</a>
			</li>
		{/iteration:footerLinks}
	</ul>
</footer>