<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Consulta</title>

<!-- Custom fonts for this template-->
<link
	href="../resources/Content/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Custom styles for this template-->
<link href="../resources/Content/css/sb-admin-2.min.css"
	rel="stylesheet" />
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="">
				<div class="sidebar-brand-icon">
					<i class="fas fa-university"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Intranet</div>
			</a>
			<!-- Divider -->
			<hr class="sidebar-divider my-0" />
			<!-- Divider -->
			<hr class="sidebar-divider" />
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseProveedores"
				aria-expanded="true" aria-controls="collapseProveedores"> <i
					class="fa fa-address-book"></i> <span>Docentes</span>
			</a>
				<div id="collapseProveedores" class="collapse"
					aria-labelledby="headingProveedores"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a href="/docente/" class="collapse-item">Registrar Docente </a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseCategorias"
				aria-expanded="true" aria-controls="collapseCategorias"> <i
					class="fa fa-book"></i> <span>Cursos</span>
			</a>
				<div id="collapseCategorias" class="collapse"
					aria-labelledby="headingCategorias" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a href="/docentecurso/" class="collapse-item"> Designar
							docente a curso</a> <a href="/curso/" class="collapse-item">
							Añadir Curso </a><a href="/docentecurso/consultarcurso"
							class="collapse-item"> Docentes por curso </a><a
							href="/docentecurso/consultar" class="collapse-item">
							Docentes por seccion </a>
					</div>
				</div></li>


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseSecciones"
				aria-expanded="true" aria-controls="collapseSecciones"> <i
					class="fa fa-list"></i> <span>Secciones</span>
			</a>
				<div id="collapseSecciones" class="collapse"
					aria-labelledby="headingCategorias" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a href="/seccion/" class="collapse-item"> Listado de
							Secciones </a> <a href="/horario/" class="collapse-item">
							Horarios disponibles </a>
					</div>
				</div></li>


			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseProductos"
				aria-expanded="true" aria-controls="collapseProductos"> <i
					class="fa fa-graduation-cap"></i> <span>Alumnos</span>
			</a>
				<div id="collapseProductos" class="collapse"
					aria-labelledby="headingProductos" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a href="/alumno/" class="collapse-item"> Registrar Alumno</a><a
							href="/alumnocurso/" class="collapse-item"> Designar curso a
							alumno </a><a href="/alumnocurso/consultarcurso"
							class="collapse-item"> Alumnos por curso </a><a
							href="/alumnocurso/consultar" class="collapse-item"> Alumnos
							por seccion </a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseCiudades"
				aria-expanded="true" aria-controls="collapseCiudades"> <i
					class="far fa-edit"></i> <span>Notas</span>
			</a>
				<div id="collapseCiudades" class="collapse"
					aria-labelledby="headingCiudades" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a href="/alumnocursonota/" class="collapse-item"> Ingreso de
							Notas </a>
					</div>
				</div></li>



			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block" />

			<li class="nav-item"><a class="nav-link" href="login.html">
					<i class="fa fa-power-off" aria-hidden="true"></i> <span>Cerrar
						Sesion</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<div class="container body-content">
			<br>

			<h4 style="text-align: center">Consulta de alumnos por curso</h4>

			<div class="col-md-8">
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Curso</label> <select id="curso"
							name="curso.nomCurso" class="form-control" required>
							<option value="">[Seleccione]</option>
							<c:forEach items="${requestScope.dataCursos}" var="s">
								<option value="${s.nomCurso}">${s.nomCurso}</option>
							</c:forEach>
						</select>
						<div>
							<button type="button" class="btn btn-primary">Consultar</button>
						</div>
					</div>


					<!-- 
				<div class="row">
					<div class="col-5">
						<input class="form-control" id="curso" name="curso.nomCurso"
							placeholder="Curso" />
					</div>
					<div class="col-2">
						<button type="button" class="btn btn-primary">Consultar</button>
					</div>
				</div> -->


				</form>
			</div>
			<div class="mt-5">
				<table id="idTable" class="table table-striped table-bordered"
					style="width: 100%">
					<thead class="thead-primary">
						<tr>
							<th>Codigo de Registro</th>
							<th>Alumno</th>
							<th>Curso</th>
							<th>Sección</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		<!-- Bootstrap core JavaScript-->
		<script src="../resources/Content/vendor/jquery/jquery.min.js"></script>
		<script
			src="../resources/Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script
			src="../resources/Content/vendor/jquery-easing/jquery.easing.min.js"></script>
		<script
			src="../resources/Content/vendor/datatables/jquery.dataTables.min.js"></script>
		<script
			src="../resources/Content/vendor/datatables/dataTables.bootstrap4.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="../resources/Content/js/sb-admin-2.js"></script>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"
			integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			crossorigin="anonymous"></script>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>

		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

		<script
			src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
		<script
			src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>



		<script>
			$(".btn-primary")
					.click(
							function() {
								$
										.get(
												"listaConsultaCurso/"
														+ $("#curso").val()
														+ "/",
												function(data) {
													console.log(data);
													//limpiar idTipo
													$("#idTable tbody").empty();
													$
															.each(
																	data,
																	function(
																			index,
																			item) {
																		$(
																				"#idTable")
																				.append(
																						"<tr><td>"
																								+ item.codAlumnoCurso
																								+ "</td><td>"
																								+ item.alumno.nomAlumno
																								+ ' '
																								+ ' '
																								+ item.alumno.apePaternoAlumno
																								+ ' '
																								+ item.alumno.apeMaternoAlumno

																								+ "</td><td>"
																								+ item.curso.nomCurso
																								+ "</td><td>"
																								+ item.seccion.nomSeccion
																								+ "</td>");
																	})

												})
							})
		</script>
</body>
</html>