<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Enciclopédia</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-right">
			<ul class="nav navbar-nav">
				<li id="home" class="active"><a href="index.jsp">Home</a></li>
				<li id="tema"><a href="index.jsp?pag=temas">Temas</a></li>
				<li id="user"><a href="index.jsp?pag=users">User</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

<script>
	$(document).ready(function() {
		var pag = <% request.getParameter("pag"); %>
		if(pag == ""){
			//$("#home").class("");
		}
	});
</script>