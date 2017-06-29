<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="hidden-print">
	<link rel="stylesheet" href="../../bootstrap/css/impressao.css" />
	<c:import url="../paginas/cabecalho.jsp"></c:import>
	<c:import url="../paginas/barra_nav.jsp"></c:import>
</div>

<div class="content-wrapper">

	<div class="col-sm-12 imprimir">
		<fieldset>
			<h2 class="hidden-print">Confirmar dados ordem</h2>
			<div class="row">
				<div class="col-sm-8 col-xs-9 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control imprimir"
							required="required" value="Data de Emissão: ${ordem.data}"
							readonly="readonly">
					</div>
				</div>
				<div class="col-sm-4 col-xs-3 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control"
							value="Número: ${ordem.codigo}" readonly="readonly">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8 col-xs-8 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control imprimir"
							required="required" value="Cliente: ${ordem.cliente}">
					</div>
				</div>
				<div class="col-sm-4 col-xs-4 imprimir">
					<div class="form-group imprimir">
						<input type="tel" class="form-control imprimir"
							required="required" value="Telefone: ${ordem.telefone}">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8 col-xs-8 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control imprimir"
							value="Equipamento: ${ordem.equipamento }" readonly="readonly">
					</div>
				</div>

				<div class="col-sm-4 col-xs-4 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control imprimir"
							value="Técnico: ${ordem.tecnico}">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 col-xs-12 imprimir">
					<div class="form-group imprimir">
						<input type="text" class="form-control imprimir"
							value="Acessórios: ${ordem.acessorios }">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 imprimir">
					<div class="form-group imprimir">
						<textarea type="text" class="form-control imprimir" rows="3">Serviço realizado: ${ordem.mercadoria_servico }</textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8 col-xs-8 imprimir">
					<div class="input-group imprimir">
						<span class="input-group-addon">Obs: </span> <input type="text"
							class="form-control imprimir">
					</div>
				</div>
				<div class="col-sm-4 col-xs-4 imprimir">
					<div class="input-group imprimir">
						<span class="input-group-addon">Total R$: </span> <input
							type="text" class="form-control imprimir" value=" ${ordem.valor}">
					</div>
				</div>
			</div>
			<div class="row visible-print-block imprimir espaco">
				<div class="row">
					<div class="col-sm-8 col-xs-9 imprimir ">
						<div class="form-group imprimir">
							<input type="text" class="form-control imprimir"
								required="required" value="Data de Emissão: ${ordem.data}"
								readonly="readonly">
						</div>
					</div>
					<div class="col-sm-4 col-xs-3 imprimir">
						<div class="form-group imprimir">
							<input type="text" class="form-control"
								value="Número: ${ordem.codigo}" readonly="readonly">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8 col-xs-8 imprimir">
						<div class="form-group imprimir">
							<input type="text" class="form-control imprimir"
								required="required" value="Cliente: ${ordem.cliente}]">
						</div>
					</div>
					<div class="col-sm-4 col-xs-4 imprimir">
						<div class="form-group imprimir">
							<input type="tel" class="form-control imprimir"
								required="required" value="Telefone: ${ordem.telefone }">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8 col-xs-8 imprimir">
						<div class="form-group imprimir">
							<input type="text" class="form-control imprimir"
								value="Equipamento: ${ordem.equipamento}" readonly="readonly">
						</div>
					</div>

					<div class="col-sm-4 col-xs-4 imprimir">
						<div class="form-group imprimir">
							<input type="text" class="form-control imprimir"
								value="Técnico: ${ordem.tecnico}">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-xs-12 imprimir">
						<div class="form-group imprimir">
							<input type="text" class="form-control imprimir"
								value="Acessórios: ${ordem.acessorios}">
						</div>
					</div>
					<div class="col-sm-6 imprimir">
						<div class="form-group imprimir">
							<textarea type="text" class="form-control imprimir" rows="3">Serviço realizado: ${ordem.mercadoria_servico}</textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8 col-xs-8 imprimir">
						<div class="input-group imprimir">
							<span class="input-group-addon">Obs: </span> <input type="text"
								class="form-control imprimir">
						</div>
					</div>
					<div class="col-sm-4 col-xs-4 imprimir">
						<div class="input-group imprimir">
							<span class="input-group-addon">Total R$: </span> <input
								type="text" class="form-control imprimir"
								value=" ${ordem.valor }">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-sm-offset-10 hidden-print espaco">

				<a href="#" class="btn btn-success hidden-print"
					onClick="window.print();">Imprimir OS</a>

			</div>
		</fieldset>
	</div>
</div>

<div class="hidden-print">
	<c:import url="../paginas/rodape.jsp"></c:import>
</div>