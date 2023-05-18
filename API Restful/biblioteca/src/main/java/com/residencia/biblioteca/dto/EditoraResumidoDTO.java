package com.residencia.biblioteca.dto;

public class EditoraResumidoDTO {
	private Integer codigoEditora;
	private String nome;
	
	public EditoraResumidoDTO() {
	super();
	}
	
	public EditoraResumidoDTO(Integer codigoEditora, String nome) {
		super();
	}
	
	public EditoraResumidoDTO(Integer codigoEditora, String nome) {
		super();
		this.codigoEditora =codigoEditora;
        this.nome = nome;
	}
	
	public Integer getCodigoEditora() {
		return codigoEditora;
	}
	public void setCodigoEditora(Integer codigoEditora) {
		this.codigoEditora = codigoEditora;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
}
