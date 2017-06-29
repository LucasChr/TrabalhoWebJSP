package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.ExceptionDAO;

import br.edu.unoesc.dao.RecadoDAO;

import br.edu.unoesc.model.Recado;

@Controller
@Path("/recado")
public class RecadoController {

	@Inject
	private Result result;

	@Inject
	private RecadoDAO recadoDao;

	private Recado recadoSelecionado;

	@Get("/formulario")
	public void formulario() {
		result.include("recado", this.recadoSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", recadoDao.listar(Recado.LISTAR, Recado.class));
	}

	@Post("/salvar")
	public void listar(Recado recado) {
		if (recado != null) {
			try {
				recadoDao.salvar(recado);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(RecadoController.class).listar();
		result.include("resultado", recadoDao.listar(Recado.LISTAR, Recado.class));
	}

	public void listar(List<Recado> recados) {
		result.include("resultado", recados);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Recado recado = recadoDao.pesquisarPorCodigo(codigo, Recado.PESQUISAR_POR_CODIGO, Recado.class);
		try {
			recadoDao.excluir(recado, Recado.class);
		} catch (ExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(RecadoController.class).listar();
		result.include("resultado", recadoDao.listar(Recado.LISTAR, Recado.class));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.recadoSelecionado = recadoDao.pesquisarPorCodigo(codigo, Recado.PESQUISAR_POR_CODIGO, Recado.class);
		result.forwardTo(RecadoController.class).formulario();
	}
}
