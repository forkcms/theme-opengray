{include:Core/Layout/Templates/Head.tpl}
<body class="{$LANGUAGE}" id="home" itemscope itemtype="http://schema.org/WebPage">
	<div id="container">
		{include:Core/Layout/Templates/Header.tpl}
		<div id="main">
			
			<div class="defaultContent clearfix">
				<h1>{$page.title}</h1>
				{iteration:positionMain}
					{option:positionMain.blockIsHTML}
						{* block is text *}
						{$positionMain.blockContent}
					{/option:positionMain.blockIsHTML}
					{option:!positionMain.blockIsHTML}
						{* block is a widget/module *}
						{$positionMain.blockContent}
					{/option:!positionMain.blockIsHTML}
				{/iteration:positionMain}
			</div>
			
			<div id="activityContent" class="clearfix">
				<div class="left">
					{iteration:positionLeft}
						{option:positionLeft.blockIsHTML}
							{* block is text *}
							{$positionLeft.blockContent}
						{/option:positionLeft.blockIsHTML}
						{option:!positionLeft.blockIsHTML}
							{* block is a widget/module *} 
							{$positionLeft.blockContent}
						{/option:!positionLeft.blockIsHTML}
					{/iteration:positionLeft}
				</div>
				<div class="right">
					{iteration:positionRight}
						{option:positionRight.blockIsHTML}
							{* block is text *}
							{$positionRight.blockContent}
						{/option:positionRight.blockIsHTML}
						{option:!positionRight.blockIsHTML}
							{* block is a widget/module *} 
							{$positionRight.blockContent}
						{/option:!positionRight.blockIsHTML}
					{/iteration:positionRight}
				</div>
			</div>
			
	{include:Core/Layout/Templates/Footer.tpl}
	</div>
	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}
	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/Core/Js/opengray.js"></script>
	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>
