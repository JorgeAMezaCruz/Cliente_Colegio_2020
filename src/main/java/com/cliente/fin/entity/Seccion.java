package com.cliente.fin.entity;

import java.io.Serializable;



public class Seccion implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int idSeccion;
	private String nomSeccion;
	private Horario horario;
	
	public int getIdSeccion() {
		return idSeccion;
	}
	public void setIdSeccion(int idSeccion) {
		this.idSeccion = idSeccion;
	}
	public String getNomSeccion() {
		return nomSeccion;
	}
	public void setNomSeccion(String nomSeccion) {
		this.nomSeccion = nomSeccion;
	}
	public Horario getHorario() {
		return horario;
	}
	public void setHorario(Horario horario) {
		this.horario = horario;
	}	

	
	
	












}
