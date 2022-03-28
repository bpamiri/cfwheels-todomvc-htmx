<header class="header">
	<h1>todos</h1>
	<form
		hx-post="/todos"
		hx-target="ul.todo-list"
		hx-swap="beforeend"
		hx-trigger="submit"
		_="on htmx:afterRequest reset() me">
	<input name="todo.title" class="new-todo" placeholder="What needs to be done?" autofocus>
	<input name="todo.completed" type="hidden" value="0">
	</form>
</header>
