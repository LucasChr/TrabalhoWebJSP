package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({

		@NamedQuery(name = Ordem.LISTAR, query = "select o from Ordem o"),
		@NamedQuery(name = Ordem.LISTAR_EM_ABERTO, query = "select o from Ordem o where o.status = :ABERTO"),
		@NamedQuery(name = Ordem.LISTAR_FINALIZADO, query = "select o from Ordem o where o.status = :FINALIZADO"),
		@NamedQuery(name = Ordem.PESQUISAR_POR_CODIGO, query = "select o from Ordem o where o.codigo = :CODIGO"),

})
@Entity
public class Ordem implements Serializable, Modelo {

	private static final long serialVersionUID = 7612547179700605206L;

	public static final String LISTAR = "ordem.listar";
	public static final String LISTAR_EM_ABERTO = "ordem.listar_em_aberto";
	public static final String LISTAR_FINALIZADO = "ordem.listar_finalizado";
	public static final String PESQUISAR_POR_CODIGO = "ordem.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;
	@Column
	private String data;
	@Column
	private String equipamento;
	@Column
	private String acessorios;
	@Column
	private String defeito;
	@Column
	private String mercadoria_servico;
	@Column
	private Double valor;
	@Column
	private String status;
	@Column
	private String prev_termino;
	@Column
	private String tecnico;
	@Column
	private String cliente;
	@Column
	private String telefone;

	public Ordem() {
		super();
	}

	public Ordem(String data, String equipamento, String acessorios, String defeito, String mercadoria_servico,
			Double valor, String status, String prev_termino, String tecnico, String cliente, String telefone) {
		super();
		this.data = data;
		this.equipamento = equipamento;
		this.acessorios = acessorios;
		this.defeito = defeito;
		this.mercadoria_servico = mercadoria_servico;
		this.valor = valor;
		this.status = status;
		this.prev_termino = prev_termino;
		this.tecnico = tecnico;
		this.cliente = cliente;
		this.telefone = telefone;
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

	public String getEquipamento() {
		return equipamento;
	}

	public void setEquipamento(String equipamento) {
		this.equipamento = equipamento;
	}

	public String getAcessorios() {
		return acessorios;
	}

	public void setAcessorios(String acessorios) {
		this.acessorios = acessorios;
	}

	public String getDefeito() {
		return defeito;
	}

	public void setDefeito(String defeito) {
		this.defeito = defeito;
	}

	public String getMercadoria_servico() {
		return mercadoria_servico;
	}

	public void setMercadoria_servico(String mercadoria_servico) {
		this.mercadoria_servico = mercadoria_servico;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPrev_termino() {
		return prev_termino;
	}

	public void setPrev_termino(String prev_termino) {
		this.prev_termino = prev_termino;
	}

	public String getTecnico() {
		return tecnico;
	}

	public void setTecnico(String tecnico) {
		this.tecnico = tecnico;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

}
