package com.cliente.fin.entity;

import java.io.Serializable;


public class Docente implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idDocente;
	private String nomDocente;
	private String apePaternoDocente;
	private String apeMaternoDocente;
	private String fecha;
	private String dniDocente;
	private String direccionDocente;
	private String distritoDocente;
	private String celularDocente;
	private String correoDocente;
	
	
	public int getIdDocente() {
		return idDocente;
	}
	public void setIdDocente(int idDocente) {
		this.idDocente = idDocente;
	}
	public String getNomDocente() {
		return nomDocente;
	}
	public void setNomDocente(String nomDocente) {
		this.nomDocente = nomDocente;
	}
	public String getApePaternoDocente() {
		return apePaternoDocente;
	}
	public void setApePaternoDocente(String apePaternoDocente) {
		this.apePaternoDocente = apePaternoDocente;
	}
	public String getApeMaternoDocente() {
		return apeMaternoDocente;
	}
	public void setApeMaternoDocente(String apeMaternoDocente) {
		this.apeMaternoDocente = apeMaternoDocente;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getDniDocente() {
		return dniDocente;
	}
	public void setDniDocente(String dniDocente) {
		this.dniDocente = dniDocente;
	}
	public String getDireccionDocente() {
		return direccionDocente;
	}
	public void setDireccionDocente(String direccionDocente) {
		this.direccionDocente = direccionDocente;
	}
	public String getDistritoDocente() {
		return distritoDocente;
	}
	public void setDistritoDocente(String distritoDocente) {
		this.distritoDocente = distritoDocente;
	}
	public String getCelularDocente() {
		return celularDocente;
	}
	public void setCelularDocente(String celularDocente) {
		this.celularDocente = celularDocente;
	}
	public String getCorreoDocente() {
		return correoDocente;
	}
	public void setCorreoDocente(String correoDocente) {
		this.correoDocente = correoDocente;
	}















}
