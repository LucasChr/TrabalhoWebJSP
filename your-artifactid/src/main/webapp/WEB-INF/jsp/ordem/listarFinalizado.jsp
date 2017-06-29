<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">
	<div class="col-sm-12">
		<h2 class="sub-header">Ordens finalizadas</h2>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Núm.</th>
						<th>Data</th>
						<th>Cliente</th>
						<th>Telefone</th>
						<th>Equipamento</th>
						<th>Serviço realizado</th>
						<th>Valor</th>
						<th>Opções</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="o" items="${finalizado}">
						<tr>
							<td>${o.codigo}</td>
							<td>${o.data}</td>
							<td>${o.cliente}</td>
							<td>${o.telefone}</td>
							<td>${o.equipamento}</td>
							<td>${o.defeito}</td>
							<td>${o.valor}</td>
							<td><a class='btn btn-danger btn-xs'
								href="${linkTo[OrdemController].excluir(o.codigo)}"> <span
									class="glyphicon glyphicon-trash"></span></a> <a
								class='btn btn-info btn-xs'
								href="${linkTo[OrdemController].editar(o.codigo)}"> <span
									class="glyphicon glyphicon-edit"></span></a> <a
								class='btn btn-success btn-xs'
								href="${linkTo[OrdemController].imprimirOS(o.codigo)}"> <span
									class="glyphicon glyphicon-print"></span></a>
							<td />
						<tr />
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<c:import url="../paginas/rodape.jsp"></c:import>