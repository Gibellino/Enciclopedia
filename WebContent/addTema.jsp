<div class="container">
	<div class="col-lg-12">
		<form method="post" action="Handler">
			<div class="form-group">
				<label>Titulo:</label> <input type="text" class="form-control"
					name="titulo" placeholder="Titulo do tema">
			</div>
			<div class="form-group">
				<label>Restrição de idade (maiores que):</label>
				<input type="number" class="form-control" name="rest">
			</div>
			<div class="form-group">
				<label>Introdução:</label>
				<textarea placeholder="Pequena Introdução" name="intro"
					style="width: 1109px; height: 209px; resize: none;"></textarea>
			</div>
			<div class="form-group">
				<label>Conteúdo:</label>
				<textarea placeholder="Conteúdo do tema" name="cont"
					style="width: 1109px; height: 209px; resize: vertical;"></textarea>
			</div>
			<div class="form-group">
				<%
					//request.setAttribute("logica", "STemas");
					//request.setAttribute("acao", "addTema");
				%>

				<input type="hidden" name="logica" value="STemas"> <input
					type="hidden" name="acao" value="addTema"> <input
					class="btn btn-success" type="submit" value="Inserir"
					name="inserir">
			</div>
		</form>
	</div>
</div>