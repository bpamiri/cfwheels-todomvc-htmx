<cfoutput>
	<li class="view" id="todo-li-#id#">
		<div class="view">
			<input class="toggle" type="checkbox">
			<label>#title#</label>
			<button hx-delete="/todos/#id#"
					hx-target="closest li"
					hx-swap="outerHTML"
					class="destroy"></button>
		</div>
		<input class="edit" value="#title#">
	</li>
</cfoutput>

<!---
<li class="editing">
	<div class="view">
		<input class="toggle" type="checkbox" checked>
		<label>Taste JavaScript</label>
		<button class="destroy"></button>
	</div>
	<input class="edit" value="Create a TodoMVC template">
</li>
<li class="completed">
	<div class="view">
		<input class="toggle" type="checkbox" checked>
		<label>Taste JavaScript</label>
		<button class="destroy"></button>
	</div>
	<input class="edit" value="Create a TodoMVC template">
</li>
<li>
	<div class="view">
		<input class="toggle" type="checkbox">
		<label>Buy a unicorn</label>
		<button class="destroy"></button>
	</div>
	<input class="edit" value="Rule the web">
</li>
--->
