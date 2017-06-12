<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" href="Handler">Enciclopédia</a>
		</div>
		<%
			if (session.getAttribute("log") != null) {
		%>
		<div class="collapse navbar-collapse navbar-right">
			<ul class="nav navbar-nav">
				<li id="home" class="active"><a href="Handler">Home</a></li>
				<li id="tema"><a href="Handler?pag=temas">Temas</a></li>
				<li id="user"><a href="Handler?pag=users">User</a></li>
				<%-- Menu Dropdown --%>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span> 
						<span class="glyphicon glyphicon-chevron-down"></span>
				</a>
					<ul class="dropdown-menu">
						<li>
							<div class="navbar-login">
								<div class="row">
									<div class="col-lg-4">
										<p class="text-center">
											<span class="glyphicon glyphicon-user icon-size"></span>
										</p>
									</div>
									<div class="col-lg-8">
										<p class="text-left">
											<strong>Bruno</strong>
										</p>
										<p class="text-left small">bruno@email.com</p>
										<p class="text-left">
                                            <a href="#" class="btn btn-primary btn-block btn-sm">Conta</a>
                                        </p>
									</div>
								</div>
							</div>
						</li>
						<li class="divider"></li>
						<li>
							<div class="navbar-login navbar-login-session">
								<div class="row">
									<div class="col-lg-12">
										<p><form method="post" action="Handler">
											<input type="hidden" name="logica" value="SUsers"> <input
												type="hidden" name="acao" value="logout"> <input
												type="submit" class="btn btn-danger btn-block btn-sm"
												value="Sair">
										</form></p>

									</div>
								</div>
							</div>
						</li>
					</ul></li>
				<%-- Fim Menu Dropdonw --%>
			</ul>
		</div>
		<%
			}
		%>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

<style>
.navbar-login {
	width: 305px;
	padding: 10px;
	padding-bottom: 0px;
}

.navbar-login-session {
	padding: 10px;
	padding-bottom: 0px;
	padding-top: 0px;
}

.icon-size {
	font-size: 87px;
}
</style>