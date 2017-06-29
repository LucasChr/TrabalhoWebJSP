package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({

		@NamedQuery(name = Recado.LISTAR, query = "select r from Recado r"),
		@NamedQuery(name = Recado.PESQUISAR_POR_CODIGO, query = "select r from Recado r where r.codigo = :CODIGO") })

@Entity
public class Recado implements Serializable, Modelo {

	private static final long serialVersionUID = -8036921126751959768L;
	public static final String LISTAR = "recado.listar";
	public static final String PESQUISAR_POR_CODIGO = "recado.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String msg;

	public Recado() {
		super();
	}

	public Recado(Long codigo, String msg) {
		super();
		this.codigo = codigo;
		this.msg = msg;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
