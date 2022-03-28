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
		<script src="https://unpkg.com/htmx.org@1.7.0" integrity="sha384-EzBXYPt0/T6gxNp0nuPtLkmRpmDBbjg6WmCUZRLXBBwYYmwAUxzlSGej0ARHX0Bo" crossorigin="anonymous"></script>
		<script src="https://unpkg.com/hyperscript.org@0.9.5"></script>
	</head>

	<body>
		<cfoutput>
			#flashMessages()#
			#includeContent()#
		</cfoutput>
		<footer class="info">
			<p>Double-click to edit a todo</p>
			<p>Created by <a href="https://github.com/bpamiri/cfwheels-todomvc-htmx">Peter Amiri</a></p>
			<p>Part of <a href="http://todomvc.com">TodoMVC</a></p>
		</footer>
	</body>
</html>
