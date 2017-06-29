package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({

		@NamedQuery(name = Cliente.LISTAR, query = "select c from Cliente c"),
		@NamedQuery(name = Cliente.PESQUISAR_POR_NOME, query = "select c from Cliente c where c.nome like :NOME"),
		@NamedQuery(name = Cliente.PESQUISAR_POR_CODIGO, query = "select c from Cliente c where c.codigo = :CODIGO")

})
@Entity
public class Cliente implements Serializable, Modelo {

	private static final long serialVersionUID = 4214091846279135931L;

	public static final String LISTAR = "cliente.listar";
	public static final String PESQUISAR_POR_NOME = "cliente.pesquisar_por_nome";
	public static final String PESQUISAR_POR_CODIGO = "cliente.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String telefone;
	@Column
	private String endereco;
	@Column
	private String bairro;
	@Column
	private String cidade;
	@Column
	private String cpf_cnpj;
	@Column
	private String email;

	public Cliente() {
		super();
	}

	public Cliente(Long codigo, String nome, String telefone, String endereco, String bairro, String cidade,
			String cpf_cnpj, String email) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.telefone = telefone;
		this.endereco = endereco;
		this.bairro = bairro;
		this.cidade = cidade;
		this.cpf_cnpj = cpf_cnpj;
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Long getCodigo() {
		return codigo;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCpf_cnpj() {
		return cpf_cnpj;
	}

	public void setCpf_cnpj(String cpf_cnpj) {
		this.cpf_cnpj = cpf_cnpj;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
