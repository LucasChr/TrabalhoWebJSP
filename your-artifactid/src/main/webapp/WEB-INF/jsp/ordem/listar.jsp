<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">

	<div class="col-sm-6">
		<h2 class="sub-header">Ordens em aberto</h2>
	</div>
	<div class="col-sm-3">
		<form class="navbar-form navbar-right"></form>
	</div>
	<div class="col-sm-3">
		<form class="navbar-form navber-right">
			<a class="btn btn-info" href='<c:url value="/ordem/formulario"/>'>Nova
				ordem</a>
		</form>

	</div>

	<div class="col-sm-12">
		<c:import url="listarAberto.jsp"></c:import>
		<c:import url="listarFinalizado.jsp"></c:import>
	</div>

</div>

<c:import url="../paginas/rodape.jsp"></c:import>
