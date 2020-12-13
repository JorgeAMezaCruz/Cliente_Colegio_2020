package com.cliente.fin.entity;
import java.io.Serializable;
public class Categoria implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int codCategoria;
	private String nomCategoria;
	public int getCodCategoria() {
		return codCategoria;
	}
	public void setCodCategoria(int codCategoria) {
		this.codCategoria = codCategoria;
	}
	public String getNomCategoria() {
		return nomCategoria;
	}
	public void setNomCategoria(String nomCategoria) {
		this.nomCategoria = nomCategoria;
	}
	
	
	
}

