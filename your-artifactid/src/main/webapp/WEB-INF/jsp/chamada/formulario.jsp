<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">
	<fieldset>
		<legend>Cadastrar nova chamada</legend>

		<form action='<c:url value="/chamada/salvar"/>' method="post">
			<div class="col-sm-3">
				<div class="form-group">
					<label for="data">Data</label> <input type="hidden"
						name="chamada.codigo" value="${chamada.codigo}"> <input
						type="date" class="form-control" name="chamada.data"
						required="required" value="${chamada.data}">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<label for="cliente">Cliente</label> <input type="text"
						class="form-control" placeholder="Nome do cliente"
						name="chamada.cliente" required="required"
						value="${chamada.cliente}">
				</div>
			</div>

			<div class="col-sm-3">
				<div class="form-group">
					<label for="horario">Horário</label> <input type="text"
						class="form-control" placeholder="Horário" name="chamada.horario"
						required="required" value="${chamada.horario}">
				</div>
			</div>

			<div class="col-sm-12">
				<div class="form-group">
					<label for="servico">Serviço a ser realizado</label>
					<textarea name="chamada.servico" rows="2" class="form-control"
						placeholder="Descreva o que deve ser realizado">${chamada.servico}</textarea>
				</div>
				<div class="col-sm-12">
					<button class="btn btn-primary" type="submit">
						<span class="fa fa-save"> Salvar</span>
					</button>
				</div>
			</div>
		</form>
	</fieldset>
</div>

<c:import url="../paginas/rodape.jsp"></c:import>