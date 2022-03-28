<cfoutput>
	<section class="main">
		<input
			hx-patch="/toggleall"
			hx-target="ul.todo-list"
			hx-swap="innerHTML"
			hx-trigger="click"
			hx-include="[name='toggleall']"
			name="toggleall"
			id="toggle-all"
			class="toggle-all"
			type="checkbox"
			#( (structKeyExists(params,"completed") && params.completed) ? "checked" : "" )#>
		<label for="toggle-all">Mark all as complete</label>
		<ul class="todo-list">
			#includePartial(partial="todo-list")#
		</ul>
	</section>
</cfoutput>