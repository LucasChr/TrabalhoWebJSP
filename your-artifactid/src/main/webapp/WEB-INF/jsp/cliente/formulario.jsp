<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">
	<div class="col-sm-12">
		<fieldset>
			<legend>Cadastrar novo cliente</legend>

			<form action='<c:url value="/cliente/salvar"/>' method="post">

				<div class="col-sm-6">
					<div class="form-group">
						<label for="nome">Nome</label> <input type="hidden"
							name="cliente.codigo" value="${cliente.codigo}"> <input
							type="text" class="form-control" placeholder="Nome do cliente"
							name="cliente.nome" required="required" value="${cliente.nome}">
					</div>
				</div>

				<div class="col-sm-3">
					<div class="form-group">
						<label for="telefone">Telefone</label> <input type="tel"
							class="form-control" placeholder="(49)9 9999-9999"
							name="cliente.telefone" required="required"
							value="${cliente.telefone}">
					</div>
				</div>

				<div class="col-sm-3">
					<div class="form-group">
						<label for="cnpj_cpf">CNPJ/CPF</label> <input type="text"
							class="form-control" name="cliente.cpf_cnpj"
							value="${cliente.cpf_cnpj}">
					</div>
				</div>


				<div class="col-sm-6">
					<div class="form-group">
						<label for="endereco">Enredeço</label> <input type="text"
							class="form-control" placeholder="Rua" name="cliente.endereco"
							value="${cliente.endereco}">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label for="bairro">Bairro</label> <input type="text"
							class="form-control" placeholder="Centro" name="cliente.bairro"
							value="${cliente.bairro}">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label for="cidade">Cidade</label> <input type="text"
							class="form-control" value="Xanxerê" name="cliente.cidade"
							value="${cliente.cidade}">
					</div>
				</div>


				<div class="col-sm-6">
					<div class="form-group">
						<label for="email">E-mail</label> <input type="email"
							class="form-control" placeholder="email@informatica.com.br"
							name="cliente.email" value="${cliente.email}">
					</div>
				</div>

				<div class="col-sm-12">
					<button class="btn btn-primary" type="submit"><span class="fa fa-save"> Salvar</span></button>
				</div>

			</form>
		</fieldset>
	</div>
</div>


<c:import url="../paginas/rodape.jsp"></c:import>
