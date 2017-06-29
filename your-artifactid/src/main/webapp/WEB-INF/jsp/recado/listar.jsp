<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">

	<div class="col-sm-6">
		<h2 class="sub-header">Recados</h2>
	</div>
	<div class="col-sm-3"></div>

	<div class="col-sm-3">
		<form class="navbar-form navber-right"></form>
	</div>
	<div class="col-sm-12">
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="col-sm-10">Mensagem</th>
						<th class="col-sm-2">Opções</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="r" items="${resultado}">
						<tr>
							<td>${r.msg}</td>
							<td><a class='btn btn-danger btn-xs'
								href="${linkTo[RecadoController].excluir(r.codigo)}"> <span
									class="glyphicon glyphicon-trash"></span>
							</a> <a class='btn btn-info btn-xs'
								href="${linkTo[RecadoController].editar(r.codigo)}"> <span
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