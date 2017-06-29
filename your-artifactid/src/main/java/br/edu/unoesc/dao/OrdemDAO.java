package br.edu.unoesc.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Ordem;

@RequestScoped
public class OrdemDAO extends GenericDAO<Ordem>{
	
	public List<Ordem> listarAberto(String query, Class<Ordem> tipo) {
		conectar();
		TypedQuery<Ordem> tq = em.createNamedQuery(query, tipo);
		tq.setParameter("ABERTO", "aberto");
		List<Ordem> objetos = tq.getResultList();
		desconectar();
		return objetos;
	}
	
	public List<Ordem> listarFinalizado(String query, Class<Ordem> tipo) {
		conectar();
		TypedQuery<Ordem> tq = em.createNamedQuery(query, tipo);
		tq.setParameter("FINALIZADO", "finalizado");
		List<Ordem> objetos = tq.getResultList();
		desconectar();
		return objetos;
	}
}
