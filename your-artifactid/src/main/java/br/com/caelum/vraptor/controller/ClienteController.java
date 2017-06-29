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
import br.edu.unoesc.model.Cliente;

@Controller
@Path("/cliente")
public class ClienteController {

	@Inject
	private Result result;

	@Inject
	private ClienteDAO clienteDAO;

	private Cliente clienteSelecionado;

	@Get("/formulario")
	public void formulario() {
		result.include("cliente", this.clienteSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", clienteDAO.listar(Cliente.LISTAR, Cliente.class));
	}

	@Post("/salvar")
	public void listar(Cliente cliente) {
		if (cliente != null) {
			try {
				clienteDAO.salvar(cliente);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(ClienteController.class).listar();
		result.include("resultado", clienteDAO.listar(Cliente.LISTAR, Cliente.class));
	}

	public void listar(List<Cliente> clientes) {
		result.include("resultado", clientes);
	}

	@Post("/pesquisar")
	public void pesquisar(String filtro) {
		List<Cliente> temp = clienteDAO.pesquisarPorNome(filtro, Cliente.PESQUISAR_POR_NOME, Cliente.class);
		result.forwardTo(ClienteController.class).listar(temp);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Cliente cliente = clienteDAO.pesquisarPorCodigo(codigo, Cliente.PESQUISAR_POR_CODIGO, Cliente.class);
		try {
			clienteDAO.excluir(cliente, Cliente.class);
		} catch (ExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(ClienteController.class).listar();
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.clienteSelecionado = (Cliente) clienteDAO.pesquisarPorCodigo(codigo, Cliente.PESQUISAR_POR_CODIGO,
				Cliente.class);
		result.forwardTo(ClienteController.class).formulario();
	}

	@Get("/os/{codigo}")
	public void os(Long codigo) {
		this.clienteSelecionado = clienteDAO.pesquisarPorCodigo(codigo, Cliente.PESQUISAR_POR_CODIGO, Cliente.class);
		result.include("cliente", clienteSelecionado);
		result.forwardTo(OrdemController.class).formulario();
	}
}
