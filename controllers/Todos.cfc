component extends="Controller" {

	function config() {
		verifies(only="show,update,delete,toggle", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Todos
	**/
	function index() {
		todos=model("todo").findAll();
		itemsLeft=model("todo").count(where="completed=0");
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
				partial="todo-item",
				layout="false",
				id=todo.id,
				title=todo.title,
				completed=todo.completed,
				itemsLeft=itemsLeft);
		}
	}

	/**
	* View Todo
	**/
	function show() {
		todo=model("todo").findByKey(params.key);
		renderPartial(
			partial="show",
			layout="false",
			id=todo.id,
			title=todo.title,
			completed=todo.completed);
	}

	/**
	* Update Todo
	**/
	function update() {
		//update item
		todo=model("todo").updateByKey(params.key, params.todo);
		itemsLeft=model("todo").count(where="completed = 0");
		renderPartial(
			partial="todo-item",
			layout="false",
			id=params.key,
			title=params.todo.title,
			completed=params.todo.completed,
			itemsLeft=itemsLeft);
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
	* View All Todos
	**/
	function all() {
		todos=model("todo").findAll();
		itemsLeft=model("todo").count(where="completed=0");
		renderPartial("todo-list");
	}

	/**
	* View Active Todos
	**/
	function active() {
		todos=model("todo").findAll(where="completed=0");
		itemsLeft=model("todo").count(where="completed=0");
		renderPartial("todo-list");
	}

	/**
	* View Completed Todos
	**/
	function completed() {
		todos=model("todo").findAll(where="completed=1");
		itemsLeft=model("todo").count(where="completed=0");
		renderPartial("todo-list");
	}

	/**
	* toggle Todo status
	**/
	function toggle() {
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
				partial="todo-item",
				layout="false",
				id=todo.id,
				title=todo.title,
				completed=todo.completed,
				itemsLeft=itemsLeft);
		}
	}

	/**
	* toggle Todo status
	**/
	function toggleall() {
		if (structKeyExists(params,"toggleall")){
			params.completed=1;
		} else {
			params.completed=0;
		}
		recordsUpdated = model("todo").updateAll( completed=params.completed );
		todos=model("todo").findAll();
		itemsLeft=model("todo").count(where="completed=0");
		renderPartial("todo-list");
	}

	/**
	* Delete All completed Todos
	**/
	function clear() {
		todo=model("todo").deleteAll(where="completed = 1");
		todos=model("todo").findAll();
		itemsLeft=model("todo").count(where="completed=0");
		renderPartial("todo-list");
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index", error="That Todo wasn't found");
	}

}
