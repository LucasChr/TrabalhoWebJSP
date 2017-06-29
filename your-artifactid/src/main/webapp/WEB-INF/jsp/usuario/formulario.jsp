<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>

<div class="content-wrapper">
	<div class="col-sm-12">
		<fieldset>

			<legend id="titulo" class="espaco">Dados de usuário</legend>

			<form action='<c:url value="/login/salvar"/>' method="post">
				<div class="col-sm-6 col-sm-offset-3">
					<div class="form-group">
						<label for="usuario">Usuário</label> <input type="hidden"
							name="usuario.codigo" value="${usuario.codigo}"> <input
							type="text" class="form-control" name="usuario.nome" id="nome"
							required="required" placeholder="Nome de usuário"
							value="${usuario.nome}">
					</div>
					<div class="form-group">
						<label for="email">E-mail</label> <input type="email"
							class="form-control" name="usuario.email" id="email"
							required="required" placeholder="fulano@dominio.com.br"
							value="${usuario.email}">
					</div>
					<div class="form-group">
						<label for="senha">Senha</label> <input type="password"
							class="form-control" name="usuario.senha" id="senha"
							required="required" placeholder="*******"
							value="${usuario.senha}">
					</div>

					<button class="btn btn-primary" type="submit">
						<span class="fa fa-save"> Salvar</span>
					</button>
				</div>
			</form>
			<legend class="espaco"></legend>
		</fieldset>
	</div>
</div>

<c:import url="../paginas/rodape.jsp"></c:import>