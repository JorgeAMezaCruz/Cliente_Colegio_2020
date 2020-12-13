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
<title>Alumno_Curso</title>

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
							href="/alumnocurso/consultar" class="collapse-item">
							Alumnos por seccion </a>
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

			<div class="card shadow-lg">
				<div class="card-header">
					<h3 class="m-0 font-weight-bold text-dark">Designar 
						Curso a alumno</h3>
					<br>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#modalProgramador">Nueva designación</button>



				</div>
				<div class="card-body">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>Código de Registro</th>
								<th>Nombre de Alumno</th>
								<th>Nombre de Curso</th>
								<th>Seccion</th>
								<th></th>
							</tr>
							<c:forEach items="${requestScope.dataAlumnosCursos}" var="dc">
								<tr>
									<td>${dc.codAlumnoCurso}</td>
									<td>${dc.alumno.nomAlumno} ${dc.alumno.apePaternoAlumno} ${dc.alumno.apeMaternoAlumno}</td>
									<td>${dc.curso.nomCurso}</td>
									<td>${dc.seccion.nomSeccion}</td>

									<td>
										<button type='button' data-toggle='modal'
											onclick="editar('${dc.codAlumnoCurso}','${dc.alumno.idAlumno}','${dc.curso.idCurso}','${dc.seccion.idSeccion}');"
											class='btn btn-success'
											style='background-color: hsla(233, 100%, 100%, 0); border: none'>
											<img src='../resources/iconos/editar.svg' width='auto'
												height='auto' />
										</button>

									</td>


								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


			<hr>
			<!-- Modal -->
			<div class="modal fade" id="modalProgramador" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
				data-backdrop="static" data-keyboard="false">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="idTitulo">Designar curso a
								alumno</h5>
						</div>
						<div class="modal-body">
							<form id="frmProgramador" action="saveAlumnoCurso" method="post"
								data-toggle="validator" role="form">
								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="id_alumno_curso">Codigo
										de Asignacion</label>
									<div class="col-lg-5">
										<input class="form-control" id="id_alumno_curso"
											readonly="readonly" name="id_alumno_curso" type="text"
											value="0" />
									</div>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Alumno</label> <select
										class="form-control" id="alumno" name="alumno" required>
										<option value="">[Seleccione]</option>
										<c:forEach items="${requestScope.dataAlumnos}" var="d">
											<option value="${d.idAlumno}">${d.nomAlumno} ${d.apePaternoAlumno} ${d.apeMaternoAlumno}</option>
										</c:forEach>
									</select>

								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Seccion</label> <select
										class="form-control" id="seccion" name="seccion" required>
										<option value="">[Seleccione]</option>
										<c:forEach items="${requestScope.dataSecciones}" var="s">
											<option value="${s.idSeccion}">${s.nomSeccion}</option>
										</c:forEach>
									</select>

								</div>


								<div class="form-group">
									<label for="exampleInputEmail1">Curso</label> <select
										class="form-control" id="curso" name="curso" required>
										<option value="">[Seleccione]</option>
										<c:forEach items="${requestScope.dataCursos}" var="c">
											<option value="${c.idCurso}">${c.nomCurso}</option>
										</c:forEach>
									</select>

								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_1">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_1" readonly="readonly"
											name="nota_1" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_2">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_2" readonly="readonly"
											name="nota_2" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_3">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_3" readonly="readonly"
											name="nota_3" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_4">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_4" readonly="readonly"
											name="nota_4" type="text" value="0" />
									</div>
								</div>



								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_5">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_5" readonly="readonly"
											name="nota_5" type="text" value="0" />
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger"
										data-dismiss="modal">Cerrar</button>
									<button type="submit" class="btn btn-primary">Guardar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


			<!-- Modal Actualiza-->

			<div class="modal fade" id="idModalActualiza">
				<div class="modal-dialog" style="width: 60%">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="idTitulo">Edición de datos de
								designación</h5>
						</div>
						<div class="modal-body">
							<form id="id_form_actualiza" accept-charset="UTF-8"
								action="saveAlumnoCurso" class="form-horizontal" method="post">
								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="id_alumno_curso">Codigo
										de Asignacion</label>
									<div class="col-lg-5">
										<input class="form-control" id="act_id_alumno_curso"
											readonly="readonly" name="id_alumno_curso" type="text"
											value="0" />
									</div>
								</div>



								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="alumno">Alumno
									</label>
									<div class="col-lg-5">
										<input class="form-control" id="act_alumno"
											readonly="readonly" name="alumno" type="text" />
									</div>
								</div>




								<div class="form-group">
									<label for="exampleInputEmail1">Seccion</label> <select
										class="form-control" id="act_seccion" name="seccion" required>
										<c:forEach items="${requestScope.dataSecciones}" var="s">
											<option value="${s.idSeccion}">${s.nomSeccion}</option>
										</c:forEach>
									</select>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="curso">Curso
									</label>
									<div class="col-lg-5">
										<input class="form-control" id="act_curso" readonly="readonly"
											name="curso" type="text" />
									</div>
								</div>










								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_1">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_1" readonly="readonly"
											name="nota_1" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_2">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_2" readonly="readonly"
											name="nota_2" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_3">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_3" readonly="readonly"
											name="nota_3" type="text" value="0" />
									</div>
								</div>


								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_4">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_4" readonly="readonly"
											name="nota_4" type="text" value="0" />
									</div>
								</div>



								<div hidden class="form-group">
									<label class="col-lg-3 control-label" for="nota_5">nota
										5</label>
									<div class="col-lg-5">
										<input class="form-control" id="nota_5" readonly="readonly"
											name="nota_5" type="text" value="0" />
									</div>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger"
										data-dismiss="modal">Cerrar</button>
									<button type="submit" class="btn btn-primary">Actualizar</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
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



	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


	<script type="text/javascript">
		function editar(id, alumno, curso, seccion) {
			$('input[id=act_id_alumno_curso]').val(id);
			$('input[id=act_alumno]').val(alumno);
			$('input[id=act_curso]').val(curso);
			$('input[id=act_seccion]').val(seccion);
			$('#idModalActualiza').modal("show");
		}
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#frmProgramador').bootstrapValidator({
				fields : {
					alumno : {
						validators : {
							notEmpty : {
								message : 'Debe seleccionar un alumno'
							}
						}
					},
					seccion : {
						validators : {
							notEmpty : {
								message : 'Debe seleccionar una seccion'
							}
						}
					},
					curso : {
						validators : {
							notEmpty : {
								message : 'Debe seleccionar un curso'
							}
						}
					},

				}
			});

		});
	</script>



	<script type="text/javascript">
		$(document).ready(function() {
			$('#id_form_actualiza').bootstrapValidator({
				fields : {
					alumno : {
						validators : {
							notEmpty : {
								message : 'El alumno es obligatorio'
							}
						}
					},
					seccion : {
						validators : {
							notEmpty : {
								message : 'La sección es obligatorio'
							}
						}
					},
					curso : {
						validators : {
							notEmpty : {
								message : 'El curso es obligatorio'
							}
						}
					},

				}
			});

		});
	</script>
</body>
</html>
