package com.cliente.fin.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.cliente.fin.entity.Docente;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/docente")
public class DocenteController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/docente";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de docentes
		ResponseEntity<Docente[]> data = rt.getForEntity(URL + "/listAllDocentes", Docente[].class);
		Docente[] lista = data.getBody();
		model.addAttribute("dataDocentes", lista);
		return "docente";
	}

	@RequestMapping(value = "/saveDocente")
	public String saveDocente(
			@RequestParam("id_docente") int cod,
			@RequestParam("nombres_docente") String nom, 
			@RequestParam("apellido_paterno_docente") String apePaterno,
			@RequestParam("apellido_materno_docente") String apeMaterno, 
			@RequestParam("fecha_nacimiento_docente") String fecha, 
			@RequestParam("dni_docente") String dni,
			@RequestParam("direccion_docente") String direccion, 
			@RequestParam("distrito_docente") String distrito, 
			@RequestParam("celular_docente") String celular,
			@RequestParam("correo_docente") String correo, 
			RedirectAttributes redirect) {

		Docente med = new Docente();
		med.setIdDocente(cod);
		med.setNomDocente(nom);
		med.setApePaternoDocente(apePaterno);
		med.setApeMaternoDocente(apeMaterno);
		med.setFecha(fecha);
		med.setDniDocente(dni);
		med.setDireccionDocente(direccion);
		med.setDistritoDocente(distrito);
		med.setCorreoDocente(correo);
		med.setCelularDocente(celular);
		
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(med);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveDocente", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro correcto...");
		return "redirect:/docente/";
	}
}
