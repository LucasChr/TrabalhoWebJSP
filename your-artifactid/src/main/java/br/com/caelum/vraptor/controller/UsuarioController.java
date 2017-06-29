package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.ExceptionDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@Path("/usuario")
public class UsuarioController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDAO usuarioDao;

	private Usuario usuarioSelecionado;

	@Get("/formulario")
	public void formulario() {
		result.include("usuario", this.usuarioSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", usuarioDao.listar(Usuario.LISTAR, Usuario.class));
	}

	@Post("/salvar")
	public void listar(Usuario usuario) {
		if (usuario != null) {
			try {
				usuarioDao.salvar(usuario);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(UsuarioController.class).listar();
		result.include("resultado", usuarioDao.listar(Usuario.LISTAR, Usuario.class));
	}

	public void listar(List<Usuario> usuarios) {
		result.include("resultado", usuarios);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Usuario usuario = usuarioDao.pesquisarPorCodigo(codigo, Usuario.PESQUISAR_POR_CODIGO, Usuario.class);
		try {
			usuarioDao.excluir(usuario, Usuario.class);
		} catch (ExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(UsuarioController.class).listar();
		result.include("resultado", usuarioDao.listar(Usuario.LISTAR, Usuario.class));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.usuarioSelecionado = usuarioDao.pesquisarPorCodigo(codigo, Usuario.PESQUISAR_POR_CODIGO, Usuario.class);
		result.forwardTo(UsuarioController.class).formulario();
	}
}
