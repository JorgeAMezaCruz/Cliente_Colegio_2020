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

import com.cliente.fin.entity.Horario;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/horario")
public class HorarioController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/horario";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de horarios
		ResponseEntity<Horario[]> data = rt.getForEntity(URL + "/listAllHorarios", Horario[].class);
		Horario[] lista = data.getBody();
		model.addAttribute("dataHorarios", lista);
		return "horario";
	}

	@RequestMapping(value = "/saveHorario")
	public String saveCurso(
			@RequestParam("id_horario") int idHorario,
			@RequestParam("descripcion") String descripcion, 
			RedirectAttributes redirect) {

		Horario h = new Horario();
		h.setIdHorario(idHorario);
		h.setDescripcion(descripcion);
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(h);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveHorario", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro correcto...");
		return "redirect:/horario/";
	}

}
