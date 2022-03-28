component extends="Controller" {

	function config() {
		verifies(except="index,new,create", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Todos
	**/
	function index() {
		//presert params.term if not passed in
		if (!structKeyExists(params,"filter")) {
			params.filter = "";
		}

		// find filtered list of todos
		switch(params.filter) {
			case "active":
				todos=model("todo").findAll(where="completed=0");
			case "completed":
				todos=model("todo").findAll(where="completed=1");
			default:
				todos=model("todo").findAll();
		}

		//set the items left count
		itemsLeft=model("todo").count(where="completed=0");
	}

	/**
	* View Todo
	**/
	function show() {
		todo=model("todo").findByKey(params.key);
	}

	/**
	* Add New Todo
	**/
	function new() {
		todo=model("todo").new();
	}

	/**
	* Create Todo
	**/
	function create() {
		todo=model("todo").create(params.todo);
		itemsLeft=model("todo").count(where="completed = 0");
		if(todo.hasErrors()){
			renderText("<li>error occured</li>");
		} else {
			//renderText(serializeJSON(params));
			renderPartial(
				partial="todo",
				layout="false",
				id=todo.id,
				title=todo.title,
				completed=todo.completed,
				itemsLeft=itemsLeft);
		}
	}

	/**
	* Edit Todo
	**/
	function edit() {
		todo=model("todo").findByKey(params.key);
	}

	/**
	* Update Todo
	**/
	function update() {
		if (isPatch()){
			// toggle completed status
			todo=model("todo").findByKey(params.key);
			if (todo.completed == 0) {
				todo.completed = 1;
			} else {
				todo.completed = 0;
			}
			if(todo.update(todo)){
				itemsLeft=model("todo").count(where="completed = 0");
				renderPartial(
					partial="todo",
					layout="false",
					id=todo.id,
					title=todo.title,
					completed=todo.completed,
					itemsLeft=itemsLeft);
				}
		} else {
			//update item
			todo=model("todo").findByKey(params.key);
			if(todo.update(params.todo)){
				redirectTo(action="index", success="Todo successfully updated");
			} else {
				renderView(action="edit");
			}
		}
	}

	/**
	* Delete Todo
	**/
	function delete() {
		todo=model("todo").deleteByKey(params.key);
		itemsLeft=model("todo").count(where="completed = 0");
		renderText("<span class='todo-count' id='itemsLeft' hx-swap-oob='true'>#pluralize(word='item', count=itemsLeft)# left</span>");
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index", error="That Todo wasn't found");
	}

}
