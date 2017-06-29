<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<c:import url="../paginas/barra_nav.jsp"></c:import>
<div class="content-wrapper">
	<div class="col-sm-12">
		<fieldset>
			<legend>Cadastrar nova ordem</legend>

			<form action='<c:url value="/ordem/salvar"/>' method="post">
				<div class="col-sm-3">
					<div class="form-group">
						<label for="datareg">Data</label> <input type="hidden"
							name="ordem.codigo" value="${ordem.codigo}"> <input
							type="date" class="form-control" name="ordem.data"
							required="required" value="${ordem.data}">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label for="cliente_nome">Cliente</label> <input type="text"
							class="form-control" placeholder="Nome do cliente"
							name="ordem.cliente" required="required"
							value="${ordem.cliente}${cliente.nome}${chamada.cliente}">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label for="cliente_telefone">Telefone</label> <input type="tel"
							class="form-control" placeholder="Telefone" name="ordem.telefone"
							required="required" value="${ordem.telefone}${cliente.telefone}">

					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<label for="equipamento">Equipamento</label> <select
							class="form-control" name="ordem.equipamento">
							<option value="Notebook" selected>Notebook</option>
							<option value="Celular">Celular</option>
							<option value="Computador">Desktop</option>
							<option value="Impressora">Impressora</option>
							<option value="Roteador">Roteador</option>
							<option value="Tablet">Tablet</option>
							<option value="outro">Outro</option>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label for="acessorios">Acessórios</label> <input type="text"
							class="form-control"
							placeholder="Carregador, pasta, mochila, etc."
							name="ordem.acessorios" value="${ordem.acessorios}">
					</div>
				</div>

				<div class="col-sm-4">
					<div class="form-group">
						<label for="tecnico">Técnico</label> <input type="text"
							class="form-control" name="ordem.tecnico" placeholder="Técnico"
							value="${ordem.tecnico}">
					</div>
				</div>

				<div class="col-sm-12">
					<div class="form-group">
						<label for="defeito">Defeito ou serviço para se realizar</label>
						<textarea name="ordem.defeito" id="defeito" rows="2"
							class="form-control"
							placeholder="Descreva o que deve ser realizado">${ordem.defeito}</textarea>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<div class="input-group imprimir">
							<span class="input-group-addon">Total R$: </span> <input
								name="ordem.valor" class="form-control" placeholder="valor"
								value="${ordem.valor}">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<fieldset>
						<legend>Status</legend>
						<div class="radio">
							<label> <input type="radio" name="ordem.status"
								value="aberto" checked> em aberto
							</label> <label> <input type="radio" name="ordem.status"
								id="finalizado" value="finalizado"> finalizado
							</label>
						</div>
					</fieldset>

					<button class="btn btn-primary" type="submit">
						<span class="fa fa-save"> Salvar</span>
					</button>
				</div>
			</form>
		</fieldset>
	</div>
</div>
<c:import url="../paginas/rodape.jsp"></c:import>