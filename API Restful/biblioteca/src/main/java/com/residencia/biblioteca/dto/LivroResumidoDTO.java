package com.residencia.biblioteca.dto;

import java.util.Date;

public class LivroResumidoDTO {
	private String nomeLivro;
	private String nomeAutor;
	private Date datalancamento;
	
	public LivroResumidoDTO() {
		super();
	}
	
	public LivroResumidoDTO(String nomeLivro, String nomeAutor, Date dataLancamento) {
		this.nomeLivro = nomeLivro;
		this.nomeAutor = nomeAutor;
		this.datalancamento = dataLancamento;
	}

	public String getNomeLivro() {
		return nomeLivro;
	}

	public void setNomeLivro(String nomeLivro) {
		this.nomeLivro = nomeLivro;
	}

	public String getNomeAutor() {
		return nomeAutor;
	}

	public void setNomeAutor(String nomeAutor) {
		this.nomeAutor = nomeAutor;
	}

	public Date getDatalancamento() {
		return datalancamento;
	}

	public void setDatalancamento(Date datalancamento) {
		this.datalancamento = datalancamento;
	}
	
}
