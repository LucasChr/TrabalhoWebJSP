<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="main-header">
	<!-- Logo -->
	<a href='<c:url value="/ordem/listarAberto"/>' class="logo"> <span
		class="logo-mini"><b>O</b>S</span> <span class="logo-lg"><b>Controle</b>
			OS</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="fa fa-gear"></span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src='<c:url value="/images/user.png"/>' class="img-circle"
							alt="User Image">
							<p>${usuario.nome}</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-6 text-center">
									<a href='<c:url value="/usuario/listar"/>'><span
										class="fa fa-users"> Usuários</span></a>
								</div>
								<div class="col-xs-6 text-center">
									<a href='<c:url value="/usuario/formulario"/>'><span
										class="fa fa-user-plus"> Novo Usuário</span></a>
								</div>
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left"></div>
							<div class="pull-right">
								<a href='<c:url value="/"/>'><span
									class="glyphicon glyphicon-log-out"></span> Sair</a>
							</div>
						</li>
					</ul></li>
			</ul>
		</div>
	</nav>
</header>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar painel de usuario logado -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src='<c:url value="/images/user.png"/>' class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">${usuario.nome}</div>
		</div>

		<ul class="sidebar-menu">
			<li class="header">MENU</li>
			<!-- Opcoes relacionadas a cliente -->
			<li class="active treeview"><a href="#"> <i
					class="fa fa-users"></i> <span>Clientes</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href='<c:url value="/cliente/formulario"/>'><i
							class="fa fa-user-plus"></i> Cadastrar</a></li>
					<li><a href='<c:url value="/cliente/listar"/>'><i
							class="fa fa-list-ul"></i> Lista de clientes</a></li>

				</ul></li>
			<!-- Opcoes ralacionadas a ordem de servico -->
			<li class="active treeview"><a href="#"> <i
					class="fa fa-list-alt"></i> <span>Ordens</span> <span
					class="pull-right-container"> <i
						class=" fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href='<c:url value="/ordem/formulario"/>'><i
							class="fa fa-plus-square"></i> Nova ordem de serviço</a></li>
					<li><a href='<c:url value="/ordem/listarAberto"/>'><i
							class="fa fa-list"></i> Lista de ordens em aberto</a></li>
					<li><a href='<c:url value="/ordem/listarFinalizado"/>'><i
							class="fa fa-list-ul"></i> Lista de ordens finalizadas</a></li>

				</ul></li>
			<!-- Separador -->
			<li class="header"></li>
			<!-- Opcoes ralacionadas a recados -->
			<li class="active treeview"><a href="#"> <i
					class="fa fa-info-circle text-red"></i> <span>Recados</span> <span
					class="pull-right-container"> <i
						class=" fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href='<c:url value="/recado/formulario"/>'><i
							class="fa fa-plus-square"></i> Novo recado</a></li>
					<li><a href='<c:url value="/recado/listar"/>'><i
							class="fa fa-list"></i> Lista de recados</a></li>
				</ul></li>

			<li><a href='<c:url value="/chamada/listar"/>'><i
					class="fa fa-circle-o text-yellow"></i> <span>Chamadas</span></a></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>