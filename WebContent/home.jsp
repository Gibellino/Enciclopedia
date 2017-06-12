<%@page import="model.Tema"%>
<%@page import="java.util.ArrayList"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Temas</h1>
		</div>
	</div>
	<%
		ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");

		for (int i = 0; i < temas.size(); i++) {
			Tema tema = (Tema) temas.get(i);
			out.append("<div class='col-sm-3 col-lg-3 col-md-3'>"
							+ "<div class='thumbnail'>"
								+ "<img src='http://placehold.it/320x150' alt=''>"
								+ "<div class='caption'>"
									+ "<h4>"
										+ "<a href='#'>" + tema.getNomeTema() + "</a>"
									+ "</h4>"
									+ "<p>" + tema.getDescricao() + "</p>"
								+ "</div>"
								+ "<div class='ratings'>"
									+ "<p class='pull-right'>12 comentários</p>"
									+ "<p>"
										+ "<span class='glyphicon glyphicon-star'></span>"
										+ "<span class='glyphicon glyphicon-star'></span>"
										+ "<span class='glyphicon glyphicon-star'></span>"
										+ "<span class='glyphicon glyphicon-star'></span>"
										+ "<span class='glyphicon glyphicon-star-empty'></span>"
									+ "</p>"
								+ "</div>"
							+ "</div>"
						+ "</div>");		
	
		}
	%>
</div>

<%-- --%>