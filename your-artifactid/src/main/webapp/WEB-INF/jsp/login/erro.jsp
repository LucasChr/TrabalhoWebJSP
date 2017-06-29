<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../paginas/cabecalho.jsp"></c:import>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12 index">
			<div class="col-sm-6 col-sm-offset-3">
				<fieldset>

					<legend id="titulo" class="espaco">Sistema de contole de
						ordens de serviço</legend>


					<div class="col-sm-4 col-sm-offset-4">
						<div class="alert alert-danger" role="alert">
							<p><span class="fa fa-warning
							"></span>
								Dados inválidos
							</p>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-4">
						<p>Favor verifique se o usuário e senha estão corretos.</p>
					</div>
					<legend class="espaco"></legend>
				</fieldset>
				<a href='<c:url value="/"/>' class="btn btn-success">Voltar <span
					class="fa fa-mail-reply"></span></a>
			</div>
		</div>
	</div>

</div>
</body>
</html>