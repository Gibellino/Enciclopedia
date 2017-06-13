<%@page import="java.util.ArrayList"%>
<%@page import="model.Tema"%>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Eliminar Temas</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<form method="post" action="Handler">
				<div class="form-group">
					<label>Tema a Eliminar:</label> <select class="form-control"
						name="listaTemas" id="listaTemas" onchange="verif(this)">
						<option value="sem">Seleciona um tema</option>
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
							type="hidden" name="acao" value="elimTema">
						<button type="button" class="btn btn-danger" data-toggle="modal"
							id="confElim" data-target="#confirm">Eliminar</button>
					</div>
				</div>

				<div class="modal fade" id="confirm" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Confirmação</h4>
							</div>
							<div class="modal-body">
								<p id="sure"></p>
							</div>
							<div class="modal-footer">
								<input class="btn btn-danger" type="submit" value="Eliminar"
									name="eliminar">
								<button type="button" class="btn btn-default"
									onclick="location.href = 'Handler?pag=temas&f=elim';"
									data-dismiss="modal">Cancelar</button>
							</div>
						</div>
					</div>
				</div>

			</form>
		</div>
	</div>
</div>

<script>
	$(document).ready(
			function() {
				if ($("#listaTemas").val() == "sem") {
					$("#confElim").attr("disabled", "true");
				} else {
					$("#confElim").removeAttr("disabled", "false");
					$("#sure").append(
							"Tem a certeza que deseja eliminar o tema "
									+ field.text());
				}
			});

	function verif(field) {
		if ($("#listaTemas").val() == "sem") {
			$("#confElim").attr("disabled", "true");
		} else {
			$("#confElim").removeAttr("disabled", "false");
			$("#sure").append(
					"Tem a certeza que deseja eliminar o tema <b>"
							+ $("#listaTemas option:selected").html() + "</b>");
		}
	}
</script>