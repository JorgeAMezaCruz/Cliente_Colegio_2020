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
import com.cliente.fin.entity.Seccion;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/seccion")
public class SeccionController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/seccion";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de secciones
		ResponseEntity<Seccion[]> data = rt.getForEntity(URL + "/listAllSecciones", Seccion[].class);
		Seccion[] lista = data.getBody();

		// lista de horarios
		ResponseEntity<Horario[]> data2 = rt.getForEntity(URL + "/listAllHorarios", Horario[].class);
		Horario[] lista2 = data2.getBody();

		// atributos
		model.addAttribute("dataSecciones", lista);
		model.addAttribute("dataHorarios",lista2);
		return "seccion";
	}

	@RequestMapping(value = "/saveSeccion")
	public String saveDocente(
						@RequestParam("id_seccion") int idSeccion,
						@RequestParam("nombre_seccion") String nomSeccion,
						@RequestParam("horario") int idHorario,
						RedirectAttributes redirect) {
		
		Seccion s=new Seccion();
		s.setIdSeccion(idSeccion);
		s.setNomSeccion(nomSeccion);
		
		Horario h = new Horario();
		h.setIdHorario(idHorario);
		s.setHorario(h);
		

		//serializar
				Gson gson=new Gson();
				String json=gson.toJson(s);
				//
				RestTemplate rt=new RestTemplate();
				HttpHeaders headers=new HttpHeaders();
				headers.setContentType(MediaType.APPLICATION_JSON);
				//unir json+headers
				HttpEntity<String> request=new HttpEntity<String>(json,headers);
				rt.postForObject(URL+"/saveSeccion", request, String.class);
				redirect.addFlashAttribute("MENSAJE","Registro correcto...");
		return "redirect:/seccion/";
	}
	
}
