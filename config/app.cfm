<cfscript>
	/*
		Place settings that should go in the Application.cfc's "this" scope here.

		Examples:
		this.name = "MyAppName";
		this.sessionTimeout = CreateTimeSpan(0,0,5,0);
	*/

	// Added via CFWheels CLI
	this.name = "todo";
	this.datasources['todo'] = {
          class: 'org.h2.Driver'
        , connectionString: 'jdbc:h2:file:/Users/peter/projects/ws/todo/db/h2/todo;MODE=MySQL'
        , username = 'sa'
        };
  // CLI-Appends-Here
</cfscript>