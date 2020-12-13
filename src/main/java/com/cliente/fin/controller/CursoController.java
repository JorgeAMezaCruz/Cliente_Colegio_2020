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

import com.cliente.fin.entity.Curso;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/curso")
public class CursoController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/curso";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de cursos
		ResponseEntity<Curso[]> data = rt.getForEntity(URL + "/listAllCursos", Curso[].class);
		Curso[] lista = data.getBody();
		// atributos
		model.addAttribute("dataCursos", lista);
		return "curso";
	}

	@RequestMapping(value = "/saveCurso")
	public String saveCurso(
			@RequestParam("id_curso") int idCurso,
			@RequestParam("nombre_curso") String nomCurso, 
			RedirectAttributes redirect) {

		Curso c = new Curso();
		c.setIdCurso(idCurso);
		c.setNomCurso(nomCurso);
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(c);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveCurso", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro correcto...");
		return "redirect:/curso/";
	}
}
