<section class="todoapp">
	<header class="header">
		<h1>todos</h1>
		<form hx-post="/todos", hx-target="#todo-list", hx-swap="afterbegin", _="on htmx:afterOnLoad set #txtTodo.value to ''">
			<input class="new-todo" placeholder="What needs to be done?" autofocus>
		</form>
	</header>
	<section style="display:none" class="main">
		<input id="toggle-all" class="toggle-all" type="checkbox">
		<label for="toggle-all">Mark all as complete</label>
		<ul class="todo-list"></ul>
		<footer class="footer">
			<span class="todo-count"></span>
			<ul class="filters">
				<li>
					<a href="#/" class="selected">All</a>
				</li>
				<li>
				<a href="#/active">Active</a>
				</li>
				<li>
				<a href="#/completed">Completed</a>
				</li>
			</ul>
			<button class="clear-completed">Clear completed</button>
		</footer>
	</section>
</section>
<footer class="info">
	<p>Double-click to edit a todo</p>
	<p>Written by <a href="http://twitter.com/lukeed05">Luke Edwards</a></p>
	<p>Refactored by <a href="https://github.com/xorgy">Aaron Muir Hamilton</a></p>
	<p>Part of <a href="http://todomvc.com">TodoMVC</a></p>
</footer>
<script src="dist/bundle.js"></script>
<script src="node_modules/todomvc-common/base.js"></script>
<link rel="stylesheet" href="node_modules/todomvc-common/base.css">
