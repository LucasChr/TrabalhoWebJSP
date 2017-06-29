<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12 conteudo">
			<div class="col-sm-6 col-sm-offset-3">
				<fieldset>

					<legend id="titulo" class="espaco">Cadastro de novo
						usuário</legend>

					<form action='<c:url value="/login/salvar"/>' method="post">
						<div class="col-sm-6 col-sm-offset-3">
							<div class="form-group">
								<label for="usuario">Usuário</label> <input type="text"
									class="form-control" name="usuario.nome" id="nome"
									required="required" placeholder="Nome de usuário">
							</div>
							<div class="form-group">
								<label for="email">E-mail</label> <input type="email"
									class="form-control" name="usuario.email" id="email"
									required="required" placeholder="fulano@dominio.com.br">
							</div>
							<div class="form-group">
								<label for="senha">Senha</label> <input type="password"
									class="form-control" name="usuario.senha" id="senha"
									required="required" placeholder="*******">
							</div>

							<button type="submit"
								class="btn btn-primary col-sm-6 col-sm-offset-3">
								<span class="fa fa-send"> Enviar</span>
							</button>
						</div>
					</form>
					<legend class="espaco"></legend>
				</fieldset>
			</div>
		</div>
	</div>

</div>
</body>
</html>
