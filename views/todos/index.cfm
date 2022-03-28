<cfoutput>
	<section class="todoapp">
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
		<!-- This section should be hidden by default and shown when there are todos -->
		<section class="main">
			<input id="toggle-all" class="toggle-all" type="checkbox">
			<label for="toggle-all">Mark all as complete</label>
			<ul class="todo-list">
				<!-- These are here just to show the structure of the list items -->
				<!-- List items should get the class `editing` when editing and `completed` when marked as completed -->
				#includePartial(partial="todo", query=todos)#
			</ul>
		</section>
		<!-- This footer should be hidden by default and shown when there are todos -->
		<footer class="footer">
			<!-- This should be `0 items left` by default -->
			<span class="todo-count" id="itemsLeft">#pluralize(word="item", count=itemsLeft)# left</span>
			<!-- Remove this if you don't implement routing -->
			<ul class="filters">
				<li>
					<a class="#( (params.action == "index") ? "selected" : "")#" href="/">All</a>
				</li>
				<li>
					<a class="#( (params.action == "active") ? "selected" : "")#" href="/active">Active</a>
				</li>
				<li>
					<a class="#( (params.action == "completed") ? "selected" : "")#" href="/completed">Completed</a>
				</li>
			</ul>
			<!-- Hidden if no completed items are left ↓ -->
			<button class="clear-completed">Clear completed</button>
		</footer>
	</section>
</cfoutput>
<script>htmx.logAll();</script>