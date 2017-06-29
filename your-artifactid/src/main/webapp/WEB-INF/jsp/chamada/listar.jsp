<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">

	<div class="col-sm-6">
		<h2 class="sub-header">Chamadas em aberto</h2>
	</div>
	<div class="col-sm-3"></div>

	<div class="col-sm-3">
		<form class="navbar-form navber-right">
			<a class="btn btn-info" href='<c:url value="/chamada/formulario"/>'>Abrir
				chamado</a>
		</form>
	</div>

	<div class="col-sm-12">
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="col-sm-1">Data</th>
						<th class="col-sm-3">Cliente</th>
						<th class="col-sm-2">Horário</th>
						<th class="col-sm-4">Serviço</th>
						<th class="col-sm-2">Opções</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="c" items="${resultado}">
						<tr>
							<td>${c.data}</td>
							<td>${c.cliente}</td>
							<td>${c.horario}</td>
							<td>${c.servico}</td>
							<td><a class='btn btn-danger btn-xs'
								href="${linkTo[ChamadaController].excluir(c.codigo)}"> <span
									class="glyphicon glyphicon-trash"></span>
							</a> <a class='btn btn-info btn-xs'
								href="${linkTo[ChamadaController].editar(c.codigo)}"> <span
									class="glyphicon glyphicon-edit"></span>
							</a> <a class='btn btn-warning btn-xs'
								href="${linkTo[ChamadaController].os(c.codigo)}"> OS </a>
							<td />
						<tr />
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="../paginas/rodape.jsp"></c:import>