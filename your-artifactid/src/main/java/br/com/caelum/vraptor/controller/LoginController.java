package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.ExceptionDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@Path("/login")
public class LoginController {

	@Inject
	private Result result;

	@Inject
	UsuarioDAO usuarioDao;

	@Inject
	HttpSession session = null;

	@Get()
	public void index() {

	}

	public void listar(List<Usuario> usuarios) {
		result.include("resultado", usuarios);
	}

	@Post("/entrar")
	public void menu(String login, String senha) {
		try {
			Usuario temp = usuarioDao.pesquisarUsuario(login, Usuario.PESQUISAR_USUARIO, Usuario.class);
			if (temp.getEmail().equals(login.toString()) && temp.getSenha().equals(senha.toString())) {
				session.setAttribute("usuario", temp);
				result.forwardTo(OrdemController.class).listarAberto();
			}
		} catch (Exception e) {
			result.forwardTo(LoginController.class).erro();
		}

	}

	@Get("/cadastro")
	public void cadastro() {

	}

	@Post("/salvar")
	public void salvar(Usuario usuario) {
		if (usuario != null) {
			try {
				usuarioDao.salvar(usuario);
			} catch (ExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.forwardTo(IndexController.class).index();
	}

	@Get("/erro")
	public void erro() {

	}
}
