<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">

	<div class="col-sm-6">
		<h2 class="sub-header">Usuários</h2>
	</div>
	<div class="col-sm-3"></div>

	<div class="col-sm-3">
		<form class="navbar-form navber-right">
		</form>
	</div>
	<div class="col-sm-12">
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Opções</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${resultado}">
						<tr>
							<td>${u.nome}</td>
							<td>${u.email}</td>
							<td><a class='btn btn-danger btn-xs'
								href="${linkTo[UsuarioController].excluir(u.codigo)}"> <span
									class="glyphicon glyphicon-trash"></span>
							</a> <a class='btn btn-info btn-xs'
								href="${linkTo[UsuarioController].editar(u.codigo)}"> <span
									class="glyphicon glyphicon-edit"></span>
							</a>
							<td />
						<tr />
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="../paginas/rodape.jsp"></c:import>