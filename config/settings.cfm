<cfscript>
	/*
		If you leave these settings commented out, CFWheels will set the data source name to the same name as the folder the application resides in.
	*/

	// set(dataSourceName="");
	// set(dataSourceUserName="");
	// set(dataSourcePassword="");

	/*
		If you leave this setting commented out, CFWheels will try to determine the URL rewrite capabilities automatically.
		The "URLRewriting" setting can bet set to "on", "partial" or "off".
		To run with "partial" rewriting, the "cgi.path_info" variable needs to be supported by the web server.
		To run with rewriting set to "on", you need to apply the necessary rewrite rules on the web server first.
	*/

	set(autoMigrateDatabase=true);
	// Added via CFWheels CLI
	set(dataSourceName="todo");
	set(URLRewriting="On");
	// Reload your application with ?reload=true&password=todo
	// set(reloadPassword="todo");

	// Configurable paths.
	set(eventPath = "app/events");
	set(filePath = "app/files");
	set(imagePath = "app/images");
	set(javascriptPath = "app/javascripts");
	set(modelPath = "app/models");
	set(pluginPath = "app/plugins");
	set(pluginComponentPath = "app/plugins");
	set(stylesheetPath = "app/stylesheets");
	set(viewPath = "app/views");
	set(controllerPath = "app/controllers");

	// CLI-Appends-Here
</cfscript>