package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.ExceptionDAO;
import br.edu.unoesc.dao.ClienteDAO;
import br.edu.unoesc.dao.OrdemDAO;
import br.edu.unoesc.model.Cliente;
import br.edu.unoesc.model.Ordem;

@Controller
@Path("/ordem")
public class OrdemController {

	@Inject
	private Result result;

	@Inject
	private ClienteDAO clienteDao;

	@Inject
	private OrdemDAO ordemDao;

	private Ordem ordemSelecionada;

	@Get("/formulario")
	public void formulario() {
		result.include("ordem", this.ordemSelecionada);
		result.include("clientes", clienteDao.listar(Cliente.LISTAR, Cliente.class));
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", ordemDao.listar(Ordem.LISTAR, Ordem.class));
		result.include("aberto", ordemDao.listarAberto(Ordem.LISTAR_EM_ABERTO, Ordem.class));
		result.include("finalizado", ordemDao.listarFinalizado(Ordem.LISTAR_FINALIZADO, Ordem.class));
	}
	
	@Get("/listarAberto")
	public void listarAberto(){
		result.include("aberto", ordemDao.listarAberto(Ordem.LISTAR_EM_ABERTO, Ordem.class));
	}
	
	@Get("/listarFinalizado")
	public void listarFinalizado(){
		result.include("finalizado", ordemDao.listarFinalizado(Ordem.LISTAR_FINALIZADO, Ordem.class));
	}

	@Post("/salvar")
	public void listar(Ordem ordem) {
		if (ordem != null) {
			try {
				ordemDao.salvar(ordem);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(OrdemController.class).listarAberto();
	}

	public void listar(List<Ordem> ordens) {
		result.include("resultado", ordens);
	}

	@Post("/pesquisar")
	public void pesquisar(Long filtro) {
		Ordem temp = ordemDao.pesquisarPorCodigo(filtro, Ordem.PESQUISAR_POR_CODIGO, Ordem.class);
		result.forwardTo(OrdemController.class).listar(temp);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Ordem ordem = ordemDao.pesquisarPorCodigo(codigo, Ordem.PESQUISAR_POR_CODIGO, Ordem.class);
		try {
			ordemDao.excluir(ordem, Ordem.class);
		} catch (ExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(OrdemController.class).listarAberto();
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.ordemSelecionada = ordemDao.pesquisarPorCodigo(codigo, Ordem.PESQUISAR_POR_CODIGO, Ordem.class);
		result.forwardTo(OrdemController.class).formulario();
	}

	@Get("/imprimir")
	public void imprimir() {
		result.include("ordem", this.ordemSelecionada);
	}

	@Get("/imprimirOS/{codigo}")
	public void imprimirOS(Long codigo) {
		this.ordemSelecionada = ordemDao.pesquisarPorCodigo(codigo, Ordem.PESQUISAR_POR_CODIGO, Ordem.class);
		result.forwardTo(OrdemController.class).imprimir();
	}
}
