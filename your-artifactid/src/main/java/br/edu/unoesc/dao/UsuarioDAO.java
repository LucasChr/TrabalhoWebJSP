package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Usuario;

@RequestScoped
public class UsuarioDAO extends GenericDAO<Usuario> {

	public Usuario pesquisarUsuario(String email, String query, Class<Usuario> tipo) {
		conectar();
		TypedQuery<Usuario> tq = em.createNamedQuery(query, tipo);
		tq.setParameter("EMAIL", email);
		Usuario user = tq.getSingleResult();
		desconectar();
		return user;
	}
}
