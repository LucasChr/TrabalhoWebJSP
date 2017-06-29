<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12 conteudo">
				<div class="col-sm-6 col-sm-offset-3">
					<fieldset>

						<legend class="espaco"></legend>

						<form action="recuperar.php" method="post">
							<div class="col-sm-6 col-sm-offset-3">
								<div class="form-group">
									<h2>Recuperado com sucesso!!</h2>
								</div>
								<a class="btn btn-primary" href="index.php">InÃ­cio</a>
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
