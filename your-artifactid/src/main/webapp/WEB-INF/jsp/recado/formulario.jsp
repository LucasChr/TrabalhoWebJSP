<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">
	<div class="col-sm-12">
		<fieldset>
			<legend>Cadastrar novo recado</legend>

			<form action='<c:url value="/recado/salvar"/>' method="post">
				<div class="col-sm-8">
					<div class="form-group">
						<label for="mensagem">Mensagem</label> <input type="hidden"
							name="recado.codigo" value="${recado.codigo}">
						<textarea name="recado.msg" rows="2" class="form-control"
							placeholder="Escreva o recado aqui">${recado.msg}</textarea>
					</div>
				</div>
				<div class="col-sm-12">
					<button class="btn btn-primary" type="submit">
						<span class="fa fa-save"> Salvar</span>
					</button>
				</div>
			</form>
		</fieldset>
	</div>
</div>

<c:import url="../paginas/rodape.jsp"></c:import>
