<%@page import="java.util.ArrayList"%>
<%@page import="model.Tema" %>
<div class="container">
	<div class="row">
    	<div class="col-lg-12">
        	<h1 class="page-header">Adicionar Temas</h1>
        </div>
    </div>
    <div class="row">
		<div class="col-lg-12">
			<form method="post" action="Handler">
				<div class="form-group">
					<label>Titulo:</label> <input type="text" class="form-control"
						name="titulo" placeholder="Titulo do tema">
				</div>
				<div class="form-group">
					<label>Restri��o de idade (maiores que):</label>
					<input type="number" class="form-control" name="rest">
				</div>
				<div class="form-group">
					<label>Preced�ncia de tema:</label>
					<select class="form-control" name="prec">
						<option value="">Sem preced�ncia</option>
						<%
						
							ArrayList temas = (ArrayList) request.getAttribute("arrayTemas");
						
							for(int i=0; i<temas.size(); i++){
								Tema tema = (Tema) temas.get(i);
								out.append("<option value='" + i + "'>" + tema.getNomeTema() + "</option>");
							}
						
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Introdu��o:</label>
					<textarea placeholder="Pequena Introdu��o" name="intro"
						class="form-control" rows="10" style="resize: vertical;"></textarea>
				</div>
				<div class="form-group">
					<label>Conte�do:</label>
					<textarea placeholder="Conte�do do tema" name="cont"
						class="form-control" rows="20" style="resize: vertical;"></textarea>
				</div>
				<div class="form-group">	
					<input type="hidden" name="logica" value="STemas"> <input
						type="hidden" name="acao" value="addTema"> <input
						class="btn btn-success" type="submit" value="Inserir"
						name="inserir">
				</div>
			</form>
		</div>
	</div>
</div>