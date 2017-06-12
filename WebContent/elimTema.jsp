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
				<div class="form-group">
					<label>Tema a editar:</label> <select class="form-control"
						name="listaTemas" id="listaTemas" onchange="edit(this)">
						<option value="sem">Sem precedência</option>
						<%
							ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");

							for (int i = 0; i < temas.size(); i++) {
								Tema tema = (Tema) temas.get(i);
								out.append("<option value='" + i + "'>" + tema.getNomeTema() + "</option>");
							}
						%>
					</select>
				</div>
				<div class="text-right">
					<div class="form-group">
						<input type="hidden" name="logica" value="STemas"> <input
							type="hidden" name="acao" value="editTema"> <input
							class="btn btn-danger" type="button" value="Cancelar"
							name="cancelar"
							onclick="location.href = 'Handler?pag=temas&f=edit';"> <input
							class="btn btn-success" type="submit" value="Inserir"
							name="inserir">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
