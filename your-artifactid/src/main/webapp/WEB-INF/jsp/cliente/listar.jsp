<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">


	<div class="col-sm-6">
		<h2 class="sub-header">Clientes</h2>
	</div>
	<div class="col-sm-3">
		<form class="navbar-form navbar-right"></form>
	</div>

	<div class="col-sm-3">
		<form class="navbar-form navber-right"></form>
	</div>

	<div class="col-sm-12">
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="col-sm-2">Cliente</th>
						<th class="col-sm-2">Telefone</th>
						<th class="col-sm-2">Endereço</th>
						<th class="col-sm-1">Bairro</th>
						<th class="col-sm-1">CPF/CNPJ</th>
						<th class="col-sm-2">E-mail</th>
						<th class="col-sm-2">Opções</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="c" items="${resultado}">
						<tr>
							<td>${c.nome}</td>
							<td>${c.telefone}</td>
							<td>${c.endereco}</td>
							<td>${c.bairro}</td>
							<td>${c.cpf_cnpj}</td>
							<td>${c.email}</td>
							<td><a class='btn btn-danger btn-xs'
								href="${linkTo[ClienteController].excluir(c.codigo)}"> <span
									class="glyphicon glyphicon-trash"></span>
							</a> <a class='btn btn-info btn-xs'
								href="${linkTo[ClienteController].editar(c.codigo)}"> <span
									class="glyphicon glyphicon-edit"></span>
							</a> <a class='btn btn-warning btn-xs'
								href="${linkTo[ClienteController].os(c.codigo)}"> OS </a>
							<td />
						<tr />
					</c:forEach>

				</tbody>
			</table>
		</div>

	</div>
</div>


<c:import url="../paginas/rodape.jsp"></c:import>