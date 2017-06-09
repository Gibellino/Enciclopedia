<%@page import="model.Tema"%>
<%@page import="java.util.ArrayList"%>
<div class="container-fluid">
	<ul class="nav nav-pills">
		<li role="presentation" class="active"><a
			href="index.jsp?pag=temas">Temas</a></li>
		<li role="presentation"><a href="Handler?pag=temas&f=add">Adicionar
				Temas</a></li>
		<li role="presentation"><a href="Handler?pag=temas&f=edit">Editar
				Temas</a></li>
		<li role="presentation"><a href="Handler?pag=temas&f=elim">Eliminar
				Temas</a></li>
	</ul>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Temas</h1>
		</div>
	</div>
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
		} else {
	%>
	<jsp:include page="elimTema.jsp" />
	<%
		}
		} else {
	%>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<tr>
					<th>Titulo</th>
					<th>Precedência</th>
					<th>Restrição (Idade)</th>
				</tr>
				<%
					ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");

						for (int i = 0; i < temas.size(); i++) {
							Tema tema = (Tema) temas.get(i);
							out.append("<tr><td>" + tema.getNomeTema() + "</td>");

							if (tema.getPrec() == null) {
								out.append("<td>Sem precedência</td>");
							} else {
								out.append("<td>" + tema.getPrec() + "</td>");
							}

							out.append("<td>" + tema.getRestricao() + "</td></tr>");
						}
				%>
			</table>
		</div>
	</div>
	<%
		}
	%>
</div>