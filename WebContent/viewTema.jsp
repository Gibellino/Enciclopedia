<%@page import="java.util.ArrayList"%>
<%@page import="model.Tema"%>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				<%
					ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");

					Tema tema = (Tema) temas.get(Integer.parseInt(request.getParameter("t")));

					out.append(tema.getNomeTema());
				%>
			</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="form-group">
				<textarea name="editCont"
					id="viewIntro" class="form-control" rows="10"
					style="resize: vertical; border: none;" readonly></textarea>
			</div>
			<div class="form-group">
				<textarea name="editCont"
					id="viewCont" class="form-control" rows="20"
					style="resize: vertical; border: none;" readonly></textarea>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
			
			<%StringBuilder intro = new StringBuilder(tema.getDescricao());
	
			for(int i=0; i< intro.length(); i++){
				if(intro.charAt(i) == 13 && intro.charAt(i+1) == 10){
					intro.setCharAt(i, '\\');
					intro.setCharAt((i+1), 'n');
				}
			}
			
			out.append("$('#viewIntro').html('" + intro + "');");
			
			StringBuilder cont = new StringBuilder(tema.getConteudo());

			for (int i = 0; i < cont.length(); i++) {
				if (cont.charAt(i) == 13 && cont.charAt(i + 1) == 10) {
					cont.setCharAt(i, '\\');
					cont.setCharAt((i + 1), 'n');
				}
			}

			out.append("$('#viewCont').html('" + cont + "');");%>
	});
</script>