package com.cliente.fin.entity;

import java.io.Serializable;


public class Alumno implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int idAlumno;
	private String nomAlumno;
	private String apePaternoAlumno;
	private String apeMaternoAlumno;
	private String fecha_alumno;
	private String dniAlumno;
	private String nomApoderado;
	private String apePaternoApoderado;
	private String apeMaternoApoderado;
	private String fecha_apoderado;
	private String dniApoderado;
	private String celularApoderado;
	private String correoApoderado;
	private String direccionAlumno;
	private String distritoAlumno;
	
	
	public int getIdAlumno() {
		return idAlumno;
	}
	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}
	public String getNomAlumno() {
		return nomAlumno;
	}
	public void setNomAlumno(String nomAlumno) {
		this.nomAlumno = nomAlumno;
	}
	public String getApePaternoAlumno() {
		return apePaternoAlumno;
	}
	public void setApePaternoAlumno(String apePaternoAlumno) {
		this.apePaternoAlumno = apePaternoAlumno;
	}
	public String getApeMaternoAlumno() {
		return apeMaternoAlumno;
	}
	public void setApeMaternoAlumno(String apeMaternoAlumno) {
		this.apeMaternoAlumno = apeMaternoAlumno;
	}
	public String getFecha_alumno() {
		return fecha_alumno;
	}
	public void setFecha_alumno(String fecha_alumno) {
		this.fecha_alumno = fecha_alumno;
	}
	public String getDniAlumno() {
		return dniAlumno;
	}
	public void setDniAlumno(String dniAlumno) {
		this.dniAlumno = dniAlumno;
	}
	public String getNomApoderado() {
		return nomApoderado;
	}
	public void setNomApoderado(String nomApoderado) {
		this.nomApoderado = nomApoderado;
	}
	public String getApePaternoApoderado() {
		return apePaternoApoderado;
	}
	public void setApePaternoApoderado(String apePaternoApoderado) {
		this.apePaternoApoderado = apePaternoApoderado;
	}
	public String getApeMaternoApoderado() {
		return apeMaternoApoderado;
	}
	public void setApeMaternoApoderado(String apeMaternoApoderado) {
		this.apeMaternoApoderado = apeMaternoApoderado;
	}
	public String getFecha_apoderado() {
		return fecha_apoderado;
	}
	public void setFecha_apoderado(String fecha_apoderado) {
		this.fecha_apoderado = fecha_apoderado;
	}
	public String getDniApoderado() {
		return dniApoderado;
	}
	public void setDniApoderado(String dniApoderado) {
		this.dniApoderado = dniApoderado;
	}
	public String getCelularApoderado() {
		return celularApoderado;
	}
	public void setCelularApoderado(String celularApoderado) {
		this.celularApoderado = celularApoderado;
	}
	public String getCorreoApoderado() {
		return correoApoderado;
	}
	public void setCorreoApoderado(String correoApoderado) {
		this.correoApoderado = correoApoderado;
	}
	public String getDireccionAlumno() {
		return direccionAlumno;
	}
	public void setDireccionAlumno(String direccionAlumno) {
		this.direccionAlumno = direccionAlumno;
	}
	public String getDistritoAlumno() {
		return distritoAlumno;
	}
	public void setDistritoAlumno(String distritoAlumno) {
		this.distritoAlumno = distritoAlumno;
	}
	
}
