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
							usuÃ¡rio</legend>

						<form action="recuperar.php" method="post">
							<div class="col-sm-6 col-sm-offset-3">
								<div class="form-group">
									<label for="email">E-mail</label> <input type="email"
										class="form-control" name="email" id="email"
										required="required" placeholder="fulano@dominio.com.br">
								</div>
								<input type="submit"
									class="btn btn-primary col-sm-6 col-sm-offset-3"
									value="Recuperar">
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
