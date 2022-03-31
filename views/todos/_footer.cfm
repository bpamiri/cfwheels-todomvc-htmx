<cfoutput>
<!--- This footer should be hidden by default and shown when there are todos --->
	<!--- This should be `0 items left` by default --->
	<span class="todo-count" id="itemsLeft">#pluralize(word="item", count=itemsLeft)# left</span>
	<ul class="filters">
		<li>
			<a class="#( (params.action == "index" || params.action == "clear" || params.action == "all") ? "selected" : "")#"
				hx-get="/all"
				hx-target="ul.todo-list"
				hx-swap="innerHTML">All</a>
		</li>
		<li>
			<a class="#( (params.action == "active") ? "selected" : "")#"
				hx-get="/active"
				hx-target="ul.todo-list"
				hx-swap="innerHTML">Active</a>
		</li>
		<li>
			<a class="#( (params.action == "completed") ? "selected" : "")#"
				hx-get="/completed"
				hx-target="ul.todo-list"
				hx-swap="innerHTML">Completed</a>
		</li>
	</ul>
	<!-- TODO Hidden if no completed items are left ↓ -->
	<button
		hx-delete="/clear"
		hx-target="ul.todo-list"
		hx-swap="innerHTML"
		class="clear-completed">Clear completed</button>
</cfoutput>