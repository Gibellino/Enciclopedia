<div class="container">
	<div class="col-lg-12">
		<form method="post" action="Handler">
			<div class="form-group">
				<label for="exampleInputEmail1">Titulo:</label> <input type="text"
					class="form-control" name="titulo" placeholder="Titulo do tema">
			</div>
			<div class="form-group">
				<label>Introdu��o:</label>
				<textarea placeholder="Pequena Introdu��o"
					style="width: 1109px; height: 209px; resize: none;"></textarea>
			</div>
			<div class="form-group">
				<label>Conte�do:</label>
				<textarea placeholder="Conte�do do tema"
					style="width: 1109px; height: 209px; resize: vertical;"></textarea>
			</div>
			<div class="form-group">
				<%
					//request.setAttribute("logica", "STemas");
					//request.setAttribute("acao", "addTema");
				%>
				
				<input type="hidden" name="logica" value="STemas">
				<input type="hidden" name="acao" value="addTema">
				
				<input class="btn btn-success" type="submit" value="Inserir" name="inserir">
			</div>
		</form>
	</div>
</div>