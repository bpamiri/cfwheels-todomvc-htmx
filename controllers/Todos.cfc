component extends="Controller" {

	function config() {
		verifies(except="index,new,create", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Todos
	**/
	function index() {
		todos=model("todo").findAll();
		itemsLeft=model("todo").count(where="completed = 0");
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
		if(todo.hasErrors()){
			renderText("<li>errors</li>");
		} else {
			renderText(serializeJSON(params));
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
		todo=model("todo").findByKey(params.key);
		if(todo.update(params.todo)){
			redirectTo(action="index", success="Todo successfully updated");
		} else {
			renderView(action="edit");
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
