<div class="container-fluid">
	<ul class="nav nav-pills">
		<li role="presentation" class="active"><a href="index.jsp?pag=temas">Temas</a></li>
		<li role="presentation"><a href="index.jsp?pag=temas&f=add">Adicionar
				Temas</a></li>
		<li role="presentation"><a href="index.jsp?pag=temas&f=edit">Editar Temas</a></li>
		<li role="presentation"><a href="index.jsp?pag=temas&f=elim">Eliminar Temas</a></li>
	</ul>
	<br>
	<%
		if (request.getParameter("f") != null) {
			if (request.getParameter("f").equals("add")) {
				%>
				<jsp:include page="addTema.jsp" />
				<%
			} else if (request.getParameter("f").equals("edit")) {
				%>
				<jsp:include page="editTema.jsp" />
				<%
			}
			else{
				%>
				<jsp:include page="elimTema.jsp" />
				<%
			}
		} else {
			%>
			<jsp:include page="home.jsp" />
			<%
		}
	%>
</div>