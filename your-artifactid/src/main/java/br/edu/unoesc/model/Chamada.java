package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({

		@NamedQuery(name = Chamada.LISTAR, query = "select c from Chamada c"),
		@NamedQuery(name = Chamada.PESQUISAR_POR_CODIGO, query = "select c from Chamada c where c.codigo = :CODIGO") })
@Entity
public class Chamada implements Serializable, Modelo {

	private static final long serialVersionUID = -337237510978726592L;

	public static final String LISTAR = "chamada.listar";
	public static final String PESQUISAR_POR_CODIGO = "chamada.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String data;

	@Column(nullable = false)
	private String horario;

	@Column(nullable = false)
	private String servico;

	@Column
	private String status;

	@Column(nullable = false)
	private String cliente;

	public Chamada() {
		super();
	}

	public Chamada(Long codigo, String data, String horario, String servico, String status, String cliente) {
		super();
		this.codigo = codigo;
		this.data = data;
		this.horario = horario;
		this.servico = servico;
		this.status = status;
		this.cliente = cliente;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getServico() {
		return servico;
	}

	public void setServico(String servico) {
		this.servico = servico;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

}
