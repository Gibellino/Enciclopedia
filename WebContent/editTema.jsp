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
				</div>
				<div id="form2" style="display: none">
					<div class="form-group">
						<label>Titulo:</label> <input type="text" class="form-control"
							name="editTitulo" id="editTitulo" placeholder="Titulo do tema">
					</div>
					<div class="form-group">
						<label>Restrição de idade (maiores que):</label> <input
							type="number" id="editRest" class="form-control" name="editRest">
					</div>
					<div class="form-group">
						<label>Precedência de tema:</label> <select class="form-control"
							name="editPrec" id="editPrec">
							<option value="sem">Sem precedência</option>
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
						<textarea placeholder="Pequena Introdução" name="editIntro"
							id="editIntro" class="form-control" rows="10"
							style="resize: vertical;"></textarea>
					</div>
					<div class="form-group">
						<label>Conteúdo:</label>
						<textarea placeholder="Conteúdo do tema" name="editCont"
							id="editCont" class="form-control" rows="20"
							style="resize: vertical;"></textarea>
					</div>
					<div class="text-right">
						<div class="form-group">
							<input type="hidden" name="logica" value="STemas"> <input
								type="hidden" name="acao" value="editTema"> <input
								class="btn btn-danger" type="button" value="Cancelar"
								name="cancelar"
								onclick="location.href = 'Handler?pag=temas&f=edit';"> <input
								class="btn btn-success" type="submit" value="Editar"
								name="editar">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
	function edit(field) {
		 if(field.value != "sem"){
			window.location =  "Handler?pag=temas&f=edit&id=" + field.value;
		 } else {
			window.location =  "Handler?pag=temas&f=edit";
		}
	}
	
	$( document ).ready(function() {
		<%if (request.getParameter("id") != null) {
				Tema tema = (Tema) temas.get(Integer.parseInt(request.getParameter("id")));%>
				<%--var id = <%= request.getParameter("id") %>;--%>
				$("#form2").css("display", "block");
			<%out.append("$('#editTitulo').attr('value', '" + tema.getNomeTema() + "');");
				out.append("document.getElementById('listaTemas').value = " + request.getParameter("id") + ";");
				out.append("$('#editRest').attr('value', '" + tema.getRestricao() + "');");%>
				<%boolean verif = true;

				for (int i = 0; i < temas.size(); i++) {
					Tema temap = (Tema) temas.get(i);
					if (temap == tema.getPrec()) {
						out.append("document.getElementById('editPrec').value = " + temas.indexOf(temap) + ";");
						verif = true;
						break;
					} else {
						verif = false;
					}
				}

				if (verif == false) {
					out.append("document.getElementById('editPrec').value = 'sem';");
				}

				out.append("$('#editIntro').html('" + tema.getDescricao() + "');");

				out.append("$('#editCont').html('" + tema.getConteudo() + "');");
			}%>
	});
</script>

<%--  --%>