package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.ExceptionDAO;
import br.edu.unoesc.dao.ChamadaDAO;
import br.edu.unoesc.model.Chamada;

@Controller
@Path("/chamada")
public class ChamadaController {

	@Inject
	private Result result;

	@Inject
	private ChamadaDAO chamadaDao;

	@Inject
	HttpSession session;

	private Chamada chamadaSelecionada;

	@Get("/formulario")
	public void formulario() {
		try {
			session.getAttribute("usuario");
			result.include("chamada", this.chamadaSelecionada);
		} catch (Exception e) {
		}
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", chamadaDao.listar(Chamada.LISTAR, Chamada.class));
	}

	@Post("/salvar")
	public void listar(Chamada chamada) {
		if (chamada != null) {
			try {
				chamadaDao.salvar(chamada);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(ChamadaController.class).listar();
		result.include("resultado", chamadaDao.listar(Chamada.LISTAR, Chamada.class));
	}

	public void listar(List<Chamada> chamadas) {
		result.include("resultado", chamadas);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Chamada chamada = chamadaDao.pesquisarPorCodigo(codigo, Chamada.PESQUISAR_POR_CODIGO, Chamada.class);
		try {
			chamadaDao.excluir(chamada, Chamada.class);
		} catch (ExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(ChamadaController.class).listar();
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.chamadaSelecionada = (Chamada) chamadaDao.pesquisarPorCodigo(codigo, Chamada.PESQUISAR_POR_CODIGO,
				Chamada.class);
		result.forwardTo(ChamadaController.class).formulario();
	}

	@Get("/os/{codigo}")
	public void os(Long codigo) {
		this.chamadaSelecionada = chamadaDao.pesquisarPorCodigo(codigo, Chamada.PESQUISAR_POR_CODIGO, Chamada.class);
		result.include("chamada", chamadaSelecionada);
		result.forwardTo(OrdemController.class).formulario();
	}
}