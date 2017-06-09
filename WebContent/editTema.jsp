<%@page import="java.util.ArrayList"%>
<%@page import="model.Tema"%>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Editar Temas</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<form method="post" action="Handler">
				<div id="form1">
					<div class="form-group">
						<label>Tema a editar:</label> <select class="form-control"
							name="prec" onchange="edit(this)">
							<option value="">Sem precedência</option>
							<%
								ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");

								for (int i = 0; i < temas.size(); i++) {
									Tema tema = (Tema) temas.get(i);
									out.append("<option value='" + i + "'>" + tema.getNomeTema() + "</option>");
								}
							%>
						</select>
					</div>
				</div>
				<div id="form2" style="display: none">
					<div class="form-group">
						<label>Titulo:</label> <input type="text" class="form-control"
							name="titulo" id="editTitulo" placeholder="Titulo do tema">
					</div>
					<div class="form-group">
						<label>Restrição de idade (maiores que):</label> <input
							type="number" class="form-control" name="rest">
					</div>
					<div class="form-group">
						<label>Precedência de tema:</label> <select class="form-control"
							name="prec">
							<option value="">Sem precedência</option>
							<%
								for (int i = 0; i < temas.size(); i++) {
									Tema tema = (Tema) temas.get(i);
									out.append("<option value='" + i + "'>" + tema.getNomeTema() + "</option>");
								}
							%>
						</select>
					</div>
					<div class="form-group">
						<label>Introdução:</label>
						<textarea placeholder="Pequena Introdução" name="intro"
							class="form-control" rows="10" style="resize: vertical;"></textarea>
					</div>
					<div class="form-group">
						<label>Conteúdo:</label>
						<textarea placeholder="Conteúdo do tema" name="cont"
							class="form-control" rows="20" style="resize: vertical;"></textarea>
					</div>
					<div class="text-right">
						<div class="form-group">
							<input type="hidden" name="logica" value="STemas"> <input
								type="hidden" name="acao" value="addTema"> <input
								class="btn btn-danger" type="button" value="Cancelar"
								name="cancelar"> <input class="btn btn-success"
								type="submit" value="Inserir" name="inserir">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
	function edit(field) {
		<%if (request.getParameter("id") == null) {
			%>window.location = window.location.href + "&id=" + field.value;<%
		}else{
			
		}
		%>
	}

	function ola() {
		<% Tema tema = (Tema) temas.get(0);%>
			$("#form2").css("display", "block");
		<%out.append("$('#editTitulo').attr('value', '" + tema.getNomeTema() + "');");%>
	}
</script>