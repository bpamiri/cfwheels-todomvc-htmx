<cfoutput>
	<li class="#( (completed == 1) ? "completed" : "view" )#" id="todo-li-#id#">
		<div class="view">
			<input
				hx-patch="/toggle/#id#"
				hx-target="closest li"
				hx-swap="outerHTML"
				hx-trigger="click"
				class="toggle" type="checkbox"
				#( (completed == 1) ? "checked" : "" )#>
			<label
				hx-get="/todos/#id#"
				hx-target="closest li"
				hx-swap="outerHTML"
				hx-trigger="dblclick"
				>#title#</label>
			<button hx-delete="/todos/#id#"
					hx-target="closest li"
					hx-swap="outerHTML"
					class="destroy"></button>
		</div>
		<input class="edit" value="#title#">
	</li>
	<cfif structKeyExists(getHTTPRequestData().headers,"HX-Request")>
		<span class='todo-count' id='itemsLeft' hx-swap-oob='true'>#pluralize(word='item', count=itemsLeft)# left</span>
	</cfif>
</cfoutput>
