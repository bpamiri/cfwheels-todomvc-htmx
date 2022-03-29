<cfoutput>
	#includePartial(partial="todo-item", query=todos)#
	<cfif structKeyExists(getHTTPRequestData().headers,"HX-Request")>
		<footer class="footer" id="footer" hx-swap-oob="true">
			#includePartial("footer")#
		</footer>
	</cfif>
</cfoutput>