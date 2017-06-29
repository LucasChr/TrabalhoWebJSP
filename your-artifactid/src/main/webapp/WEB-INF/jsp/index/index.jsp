<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12 index">
			<div class="col-sm-6 col-sm-offset-3">
				<fieldset>

					<legend id="titulo" class="espaco">Sistema de contole de
						ordens de serviço</legend>

					<form action='<c:url value="/login/entrar"/>' method="post">
						<div class="col-sm-6 col-sm-offset-3">
							<div class="form-group">
								<input type="text" class="form-control" name="login" id="login"
									required="required" placeholder="Login">
							</div>

							<div class="form-group">
								<input type="password" class="form-control" name="senha"
									id="senha" required="required" placeholder="Senha">
							</div>

							<a class="btn btn-link col-sm-6"
								href='<c:url value="/login/cadastro"/>'>Cadastre-se</a> <a
								class="btn btn-link col-sm-6" href="recupera_senha.jsp">Esqueceu
								senha?</a> <input type="submit"
								class="btn btn-primary col-sm-6 col-sm-offset-3" value="Entrar">
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
