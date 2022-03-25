<!doctype html>
<html>
	<head>
		<cfoutput>#csrfMetaTags()#</cfoutput>
		<meta charset="utf-8">
		<meta name='viewport' content='width=device-width, initial-scale=1'>
		<title>CFWheels • TodoMVC • HTMX</title>
		<cfoutput>#styleSheetLinkTag("base")#</cfoutput>
		<cfoutput>#styleSheetLinkTag("index")#</cfoutput>
	</head>

	<body>
		<cfoutput>
			#flashMessages()#
			#includeContent()#
		</cfoutput>
	</body>
</html>
