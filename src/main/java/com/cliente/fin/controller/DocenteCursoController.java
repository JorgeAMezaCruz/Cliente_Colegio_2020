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

import com.cliente.fin.entity.Curso;
import com.cliente.fin.entity.Docente;
import com.cliente.fin.entity.Docente_Curso;
import com.cliente.fin.entity.Seccion;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/docentecurso")
public class DocenteCursoController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/docentecurso";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de docentes_curso
		ResponseEntity<Docente_Curso[]> data = rt.getForEntity(URL + "/listAllDocentesCursos", Docente_Curso[].class);
		Docente_Curso[] lista = data.getBody();

		// lista de docentes
		ResponseEntity<Docente[]> data2 = rt.getForEntity(URL + "/listAllDocentes", Docente[].class);
		Docente[] lista2 = data2.getBody();

		// lista de secciones
		ResponseEntity<Seccion[]> data3 = rt.getForEntity(URL + "/listAllSecciones", Seccion[].class);
		Seccion[] lista3 = data3.getBody();
		
		// lista de cursos
		ResponseEntity<Curso[]> data4 = rt.getForEntity(URL + "/listAllCursos", Curso[].class);
		Curso[] lista4 = data4.getBody();

		// atributos
		model.addAttribute("dataDocentesCursos", lista);
		model.addAttribute("dataDocentes", lista2);
		model.addAttribute("dataSecciones", lista3);
		model.addAttribute("dataCursos", lista4);

		return "docentecurso";
	}

	@RequestMapping(value = "/saveDocenteCurso")
	public String saveDocenteCurso(
			@RequestParam("id_docente_curso") int codDocenteCurso,
			@RequestParam("docente") int idDocente, 
			@RequestParam("curso") int idCurso,
			@RequestParam("seccion") int idSeccion,
			RedirectAttributes redirect) {

		Docente_Curso dc = new Docente_Curso();
		Docente d = new Docente();
		Curso c = new Curso();
		Seccion s = new Seccion();
		
		
		dc.setCodDocenteCurso(codDocenteCurso);

		d.setIdDocente(idDocente);
		dc.setDocente(d);

		
		c.setIdCurso(idCurso);
		dc.setCurso(c);
		
		s.setIdSeccion(idSeccion);
		dc.setSeccion(s);
		
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(dc);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveDocenteCurso", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro correcto...");
		return "redirect:/docentecurso/";
	}
	
	
	
	@RequestMapping(value = "/consultar")
	public String consultar(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de secciones
		ResponseEntity<Seccion[]> data3 = rt.getForEntity(URL + "/listAllSecciones", Seccion[].class);
		Seccion[] lista3 = data3.getBody();
		model.addAttribute("dataSecciones", lista3);
		return "consulta";
	}
	
	

	
	@RequestMapping(value = "/listaConsulta/{seccion}")
	@ResponseBody
	public Docente_Curso[] listaConsulta(@PathVariable("seccion") String seccion) {
		
		Docente_Curso[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Docente_Curso[]>data= rt.getForEntity(
						URL+"/listAllConsulta/"+seccion,Docente_Curso[].class);
		lista=data.getBody();
		return lista;
	}
	
	
	
	
	
	
	@RequestMapping(value = "/consultarcurso")
	public String consultarcurso(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de secciones
		ResponseEntity<Curso[]> data3 = rt.getForEntity(URL + "/listAllCursos", Curso[].class);
		Curso[] lista3 = data3.getBody();
		model.addAttribute("dataCursos", lista3);
		return "consultacurso";
	}
	
	

	
	@RequestMapping(value = "/listaConsultaCurso/{curso}")
	@ResponseBody
	public Docente_Curso[] listaConsultaCurso(@PathVariable("curso") String curso) {
		
		Docente_Curso[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Docente_Curso[]>data= rt.getForEntity(
						URL+"/listAllConsultaCurso/"+curso,Docente_Curso[].class);
		lista=data.getBody();
		return lista;
	}
}
