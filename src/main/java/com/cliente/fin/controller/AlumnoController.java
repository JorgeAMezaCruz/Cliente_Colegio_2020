package com.cliente.fin.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cliente.fin.entity.Alumno;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/alumno")
public class AlumnoController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/alumno";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de alumnos
		ResponseEntity<Alumno[]> data = rt.getForEntity(URL + "/listAllAlumnos", Alumno[].class);
		Alumno[] lista = data.getBody();

		model.addAttribute("dataAlumnos", lista);
		return "alumno";
	}

	@RequestMapping(value = "/saveAlumno")
	public String saveAlumno(
			@RequestParam("id_alumno") int idAlumno,
			@RequestParam("nombres_alumno") String nomAlumno, 
			@RequestParam("apellido_paterno_alumno") String apePaternoAlumno,
			@RequestParam("apellido_materno_alumno") String apeMaternoAlumno, 
			@RequestParam("fecha_nacimiento_alumno") String fecha_alumno, 
			@RequestParam("dni_alumno") String dniAlumno,
			@RequestParam("nombres_apoderado") String nomApoderado, 
			@RequestParam("apellido_paterno_apoderado") String apePaternoApoderado, 
			@RequestParam("apellido_materno_apoderado") String apeMaternoApoderado,
			@RequestParam("fecha_nacimiento_apoderado") String fecha_apoderado,
			@RequestParam("dni_apoderado") String dniApoderado,
			@RequestParam("celular_apoderado") String celularApoderado,
			@RequestParam("correo_apoderado") String correoApoderado,
			@RequestParam("direccion") String direccionAlumno,
			@RequestParam("distrito") String distritoAlumno,
			RedirectAttributes redirect) {

		Alumno a = new Alumno();
		a.setIdAlumno(idAlumno);
		a.setNomAlumno(nomAlumno);
		a.setApePaternoAlumno(apePaternoAlumno);
		a.setApeMaternoAlumno(apeMaternoAlumno);
		a.setFecha_alumno(fecha_alumno);
		a.setDniAlumno(dniAlumno);
		a.setNomApoderado(nomApoderado);
		a.setApePaternoApoderado(apePaternoApoderado);
		a.setApeMaternoApoderado(apeMaternoApoderado);
		a.setFecha_apoderado(fecha_apoderado);
		a.setDniApoderado(dniApoderado);
		a.setCelularApoderado(celularApoderado);
		a.setCorreoApoderado(correoApoderado);
		a.setDireccionAlumno(direccionAlumno);
		a.setDistritoAlumno(distritoAlumno);
		
		
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(a);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveAlumno", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro de alumno correcto...");
		return "redirect:/alumno/";
	}

}
