<cfscript>

	// Use this file to add routes to your application and point the root route to a controller action.
	// Don't forget to issue a reload request (e.g. reload=true) after making changes.
	// See https://guides.cfwheels.org/docs/routing for more info.

	mapper()
		// CLI-Appends-Here
		.resources(name="todos", mapFormat="false", except="new,edit")
		.get(name="all", pattern="/all", to="todos##all")
		.get(name="active", pattern="/active", to="todos##active")
		.get(name="completed", pattern="/completed", to="todos##completed")
		.patch(name="toggle", pattern="/toggle/[key]", to="todos##toggle")
		.delete(name="clear", pattern="/clear", to="todos##clear")
		.patch(name="toggleall", pattern="/toggleall", to="todos##toggleall")

		// The "wildcard" call below enables automatic mapping of "controller/action" type routes.
		// This way you don't need to explicitly add a route every time you create a new action in a controller.
		//.wildcard()

		// The root route below is the one that will be called on your application's home page (e.g. http://127.0.0.1/).
		// You can, for example, change "wheels##wheels" to "home##index" to call the "index" action on the "home" controller instead.
		.root(to="todos##index", method="get")
	.end();

</cfscript>