<!doctype html>
<html lang="en">
	<head>
		<cfoutput>#csrfMetaTags()#</cfoutput>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>CFWheels • TodoMVC • HTMX</title>
		<cfoutput>#styleSheetLinkTag("base")#</cfoutput>
		<cfoutput>#styleSheetLinkTag("index")#</cfoutput>
		<cfoutput>#styleSheetLinkTag("app")#</cfoutput>
	</head>

	<body>
		<cfoutput>
			#flashMessages()#
			#includeContent()#
		</cfoutput>
		<footer class="info">
			<p>Double-click to edit a todo</p>
			<!-- Remove the below line ↓ -->
			<p>Template by <a href="http://sindresorhus.com">Sindre Sorhus</a></p>
			<!-- Change this out with your name and url ↓ -->
			<p>Created by <a href="http://todomvc.com">you</a></p>
			<p>Part of <a href="http://todomvc.com">TodoMVC</a></p>
		</footer>
	</body>
</html>
