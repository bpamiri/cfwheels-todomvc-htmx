<cfoutput>
<li class="editing" id="todo-li-#todo.id#">
	<form
		hx-put="/todos/#todo.id#"
		hx-target="closest li"
		hx-swap="outerHTML"
		hx-trigger="submit">
		<input name="todo.title" class="edit" value="#todo.title#" autofocus>
		<input name="todo.completed" type="hidden" value="#todo.completed#">
	</form>
</li>
</cfoutput>
