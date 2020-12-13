package com.cliente.fin.entity;

import java.io.Serializable;




public class Docente_Curso implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int codDocenteCurso;
	private Docente docente;
	private Curso curso;
	private Seccion seccion;
	public int getCodDocenteCurso() {
		return codDocenteCurso;
	}
	public void setCodDocenteCurso(int codDocenteCurso) {
		this.codDocenteCurso = codDocenteCurso;
	}
	public Docente getDocente() {
		return docente;
	}
	public void setDocente(Docente docente) {
		this.docente = docente;
	}
	public Curso getCurso() {
		return curso;
	}
	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	public Seccion getSeccion() {
		return seccion;
	}
	public void setSeccion(Seccion seccion) {
		this.seccion = seccion;
	}
	
	
	
	












}
