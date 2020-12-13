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
import com.cliente.fin.entity.Docente_Curso;
import com.cliente.fin.entity.Alumno;
import com.cliente.fin.entity.Alumno_Curso;
import com.cliente.fin.entity.Seccion;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/alumnocurso")
public class AlumnoCursoController {
	private String URL = "http://proyectodamiiapi.herokuapp.com/alumnocurso";

	@RequestMapping(value = "/")
	public String principal(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de alumnos_curso
		ResponseEntity<Alumno_Curso[]> data = rt.getForEntity(URL + "/listAllAlumnosCursos", Alumno_Curso[].class);
		Alumno_Curso[] lista = data.getBody();

		// lista de alumnos
		ResponseEntity<Alumno[]> data2 = rt.getForEntity(URL + "/listAllAlumnos", Alumno[].class);
		Alumno[] lista2 = data2.getBody();

		// lista de secciones
		ResponseEntity<Seccion[]> data3 = rt.getForEntity(URL + "/listAllSecciones", Seccion[].class);
		Seccion[] lista3 = data3.getBody();
		
		// lista de cursos
		ResponseEntity<Curso[]> data4 = rt.getForEntity(URL + "/listAllCursos", Curso[].class);
		Curso[] lista4 = data4.getBody();

		// atributos
		model.addAttribute("dataAlumnosCursos", lista);
		model.addAttribute("dataAlumnos", lista2);
		model.addAttribute("dataSecciones", lista3);
		model.addAttribute("dataCursos", lista4);

		return "alumnocurso";
	}

	@RequestMapping(value = "/saveAlumnoCurso")
	public String saveAlumnoCurso(
			@RequestParam("id_alumno_curso") int codAlumnoCurso,
			@RequestParam("alumno") int idAlumno, 
			@RequestParam("curso") int idCurso,
			@RequestParam("seccion") int idSeccion,
			
			@RequestParam("nota_1") double n1,
			@RequestParam("nota_2") double n2,
			@RequestParam("nota_3") double n3,
			@RequestParam("nota_4") double n4,
			@RequestParam("nota_5") double n5,
			
			RedirectAttributes redirect) {

		Alumno_Curso ac = new Alumno_Curso();
		Alumno d = new Alumno();
		Curso c = new Curso();
		Seccion s = new Seccion();
		
		ac.setCodAlumnoCurso(codAlumnoCurso);

		d.setIdAlumno(idAlumno);
		ac.setAlumno(d);

		
		c.setIdCurso(idCurso);
		ac.setCurso(c);
		
		s.setIdSeccion(idSeccion);
		ac.setSeccion(s);
		ac.setNota1(n1);
		ac.setNota2(n2);
		ac.setNota3(n3);
		ac.setNota4(n4);
		ac.setNota5(n5);
		
		
		// serializar
		Gson gson = new Gson();
		String json = gson.toJson(ac);
		//
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		// unir json+headers
		HttpEntity<String> request = new HttpEntity<String>(json, headers);
		rt.postForObject(URL + "/saveAlumnoCurso", request, String.class);
		redirect.addFlashAttribute("MENSAJE", "Registro correcto...");
		return "redirect:/alumnocurso/";
	}
	
	
	
	@RequestMapping(value = "/consultar")
	public String consultar(Model model) {
		RestTemplate rt = new RestTemplate();
		// lista de secciones
		ResponseEntity<Seccion[]> data3 = rt.getForEntity(URL + "/listAllSecciones", Seccion[].class);
		Seccion[] lista3 = data3.getBody();
		
		model.addAttribute("dataSecciones", lista3);
		
		
		return "consulta_seccion_alumno";
	}
	
	

	
	@RequestMapping(value = "/listaConsulta/{seccion}")
	@ResponseBody
	public Alumno_Curso[] listaConsulta(@PathVariable("seccion") String seccion) {
		
		Alumno_Curso[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Alumno_Curso[]>data= rt.getForEntity(
						URL+"/listAllConsulta/"+seccion,Alumno_Curso[].class);
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
		
		
		return "consulta_curso_alumno";
	}
	
	

	
	@RequestMapping(value = "/listaConsultaCurso/{curso}")
	@ResponseBody
	public Alumno_Curso[] listaConsultaCurso(@PathVariable("curso") String curso) {
		
		Alumno_Curso[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Alumno_Curso[]>data= rt.getForEntity(
						URL+"/listAllConsultaCurso/"+curso,Alumno_Curso[].class);
		lista=data.getBody();
		return lista;
	}
}
