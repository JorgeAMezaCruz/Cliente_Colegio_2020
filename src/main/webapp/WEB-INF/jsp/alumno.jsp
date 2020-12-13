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
<title>Alumno</title>

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

			<div class="card shadow-lg" style="width: 1300px;">
				<div class="card-header">
					<h3 class="m-0 font-weight-bold text-dark">Listado de Alumnos</h3>
					<br>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#modalProgramador">Nuevo Alumno</button>



				</div>
				<div class="card-body">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>Código</th>
								<th>Nombres</th>
								<th>Apellido Paterno</th>
								<th>Apellido Materno</th>
								<th>Fecha de Nacimiento</th>
								<th>DNI</th>
								<th hidden>Nombres (Apoderado)</th>
								<th hidden>Apellido Paterno (Apoderado)</th>
								<th hidden>Apellido Materno (Apoderado)</th>
								<th hidden>DNI (Apoderado)</th>
								<th hidden>Fecha de Nacimiento (Apoderado)</th>
								<th>Direccion(Apoderado)</th>
								<th>Distrito(Apoderado)</th>
								<th>Celular(Apoderado)</th>
								<th hidden>Correo(Apoderado)</th>
								<th></th>
							</tr>


							<c:forEach items="${requestScope.dataAlumnos}" var="a">
								<tr>
									<td>${a.idAlumno}</td>
									<td>${a.nomAlumno}</td>
									<td>${a.apePaternoAlumno}</td>
									<td>${a.apeMaternoAlumno}</td>
									<td>${a.fecha_alumno}</td>
									<td>${a.dniAlumno}</td>
									<td hidden>${a.nomApoderado}</td>
									<td hidden>${a.apePaternoApoderado}</td>
									<td hidden>${a.apeMaternoApoderado}</td>
									<td hidden>${a.dniApoderado}</td>
									<td hidden>${a.fecha_apoderado}</td>
									<td>${a.direccionAlumno}</td>
									<td>${a.distritoAlumno}</td>
									<td>${a.celularApoderado}</td>
									<td hidden>${a.correoApoderado}</td>

									<td>
										<button type='button' data-toggle='modal'
											onclick="editar('${a.idAlumno}','${a.nomAlumno}','${a.apePaternoAlumno}','${a.apeMaternoAlumno}','${a.fecha_alumno}',
													'${a.dniAlumno}','${a.nomApoderado}','${a.apePaternoApoderado}','${a.apeMaternoApoderado}','${a.fecha_apoderado}','${a.dniApoderado}',
													'${a.celularApoderado}','${a.correoApoderado}','${a.direccionAlumno}','${a.distritoAlumno}');"
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
							<h5 class="modal-title" id="idTitulo">Registrar Alumno</h5>
						</div>
						<div class="modal-body">
							<form id="frmProgramador" action="saveAlumno" method="post"
								data-toggle="validator" role="form">
								<div class="row">

									<div hidden class="form-group">
										<label class="col-lg-3 control-label" for="id_alumno">Codigo
											de Alumno</label>
										<div class="col-lg-5">
											<input class="form-control" id="id_ID" readonly="readonly"
												name="id_alumno" type="text" value="0" />
										</div>
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Nombres</label> <input
											type="text" class="form-control" name="nombres_alumno"
											id="nombres_alumno" autocomplete="off">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno</label> <input
											type="text" class="form-control"
											name="apellido_paterno_alumno" id="apellido_paterno_alumno" autocomplete="off">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno</label> <input
											type="text" class="form-control"
											name="apellido_materno_alumno" id="apellido_materno_alumno" autocomplete="off">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_alumno" id="datepicker">
									</div>



									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input
											type="number" class="form-control" name="dni_alumno"
											id="dni_alumno" autocomplete="off">
									</div>
								</div>

								<h5 class="modal-title" id="idTitulo">Datos del Apoderado</h5>
								<div class="row">

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Nombres (Apoderado)</label> <input
											type="text" class="form-control" name="nombres_apoderado"
											id="nombres_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno
											(Apoderado)</label> <input type="text" class="form-control"
											name="apellido_paterno_apoderado"
											id="apellido_paterno_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno
											(Apoderado)</label> <input type="text" class="form-control"
											name="apellido_materno_apoderado"
											id="apellido_materno_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_apoderado" id="datepicker_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input
											type="number" class="form-control" name="dni_apoderado"
											id="dni_apoderado">
									</div>

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Direccion</label> <input
											type="text" class="form-control" name="direccion"
											id="direccion">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Distrito</label> <input
											type="text" class="form-control" name="distrito"
											id="distrito">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Celular</label> <input
											type="number" class="form-control" name="celular_apoderado"
											id="celular_apoderado">
									</div>

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Correo</label> <input
											type="email" class="form-control" name="correo_apoderado"
											id="correo_apoderado">
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-danger"
											data-dismiss="modal">Cerrar</button>
										<button type="submit" class="btn btn-primary">Guardar</button>
									</div>
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
								alumno</h5>
						</div>
						<div class="modal-body">
							<form id="id_form_actualiza" action="saveAlumno" method="post"
								data-toggle="validator" role="form">

								<div class="row">

									<div hidden class="form-group col-md-6">
										<label for="id_alumno">Codigo de Alumno</label> <input
											class="form-control" id="id_alumno" readonly="readonly"
											name="id_alumno" type="text" />
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Nombres</label> <input
											type="text" class="form-control" name="nombres_alumno"
											id="act_nombres_alumno">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno</label> <input
											type="text" class="form-control"
											name="apellido_paterno_alumno"
											id="act_apellido_paterno_alumno">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno</label> <input
											type="text" class="form-control"
											name="apellido_materno_alumno"
											id="act_apellido_materno_alumno">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_alumno"
											id="act_fecha_nacimiento_alumno">
									</div>



									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input
											type="number" class="form-control" name="dni_alumno"
											id="act_dni_alumno">
									</div>
								</div>

								<hr>
								<h5 class="modal-title" id="idTitulo">Datos del Apoderado</h5>

								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Nombres (Apoderado)</label> <input
											type="text" class="form-control" name="nombres_apoderado"
											id="act_nombres_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno
											(Apoderado)</label> <input type="text" class="form-control"
											name="apellido_paterno_apoderado"
											id="act_apellido_paterno_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno
											(Apoderado)</label> <input type="text" class="form-control"
											name="apellido_materno_apoderado"
											id="act_apellido_materno_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_apoderado"
											id="act_fecha_nacimiento_apoderado">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input
											type="number" class="form-control" name="dni_apoderado"
											id="act_dni_apoderado" autocomplete="off">
									</div>

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Direccion</label> <input
											type="text" class="form-control" name="direccion"
											id="act_direccion" autocomplete="off">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Distrito</label> <input
											type="text" class="form-control" name="distrito"
											id="act_distrito" autocomplete="off">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Celular</label> <input
											type="number" class="form-control" name="celular_apoderado"
											id="act_celular_apoderado" autocomplete="off">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Correo</label> <input
											type="email" class="form-control" name="correo_apoderado"
											id="act_correo_apoderado" autocomplete="off">
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
		function editar(idAlumno, nomAlumno, apePaternoAlumno,
				apeMaternoAlumno, fecha_alumno, dniAlumno, nomApoderado,
				apePaternoApoderado, apeMaternoApoderado, fecha_apoderado,
				dniApoderado, celularApoderado, correoApoderado,
				direccionAlumno, distritoAlumno) {
			$('input[id=id_alumno]').val(idAlumno);
			$('input[id=act_nombres_alumno]').val(nomAlumno);
			$('input[id=act_apellido_paterno_alumno]').val(apePaternoAlumno);
			$('input[id=act_apellido_materno_alumno]').val(apeMaternoAlumno);
			$('input[id=act_fecha_nacimiento_alumno]').val(fecha_alumno);
			$('input[id=act_dni_alumno]').val(dniAlumno);
			$('input[id=act_nombres_apoderado]').val(nomApoderado);
			$('input[id=act_apellido_paterno_apoderado]').val(
					apePaternoApoderado);
			$('input[id=act_apellido_materno_apoderado]').val(
					apeMaternoApoderado);
			$('input[id=act_fecha_nacimiento_apoderado]').val(fecha_apoderado);
			$('input[id=act_dni_apoderado]').val(dniApoderado);
			$('input[id=act_celular_apoderado]').val(celularApoderado);
			$('input[id=act_correo_apoderado]').val(correoApoderado);
			$('input[id=act_direccion]').val(direccionAlumno);
			$('input[id=act_distrito]').val(distritoAlumno);
			$('#idModalActualiza').modal("show");
		}
	</script>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#frmProgramador')
									.bootstrapValidator(
											{
												fields : {
													nombres_alumno : {
														validators : {
															notEmpty : {
																message : 'El nombre es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_paterno_alumno : {
														validators : {
															notEmpty : {
																message : 'El apellido paterno es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_materno_alumno : {
														validators : {
															notEmpty : {
																message : 'El apellido materno es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													fecha_nacimiento_alumno : {
														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento obligatorio'
															},
														}
													},
													dni_alumno : {
														validators : {
															notEmpty : {
																message : 'El campo dni es un campo obligatorio'
															},
															stringLength : {
																message : 'El dni debe tener 8 caracteres',
																min : 8,
																max : 8
															}
														}
													},
													nombres_apoderado : {
														validators : {
															notEmpty : {
																message : 'El nombre del apoderado es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_paterno_apoderado : {
														validators : {
															notEmpty : {
																message : 'El apellido paterno del apoderado es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_materno_apoderado : {
														validators : {
															notEmpty : {
																message : 'El apellido materno del apoderadoes obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													fecha_nacimiento_apoderado : {
														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento del apoderado obligatorio'
															},
														}
													},
													dni_apoderado : {
														validators : {
															notEmpty : {
																message : 'El campo dni es un campo obligatorio'
															},
															stringLength : {
																message : 'El dni debe tener 8 caracteres',
																min : 8,
																max : 8
															}
														}
													},
													direccion : {
														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de alumno'
															},
														}
													},

													distrito : {
														validators : {
															notEmpty : {
																message : 'Ingrese el distrito de alumno'
															},
														}
													},

													celular_apoderado : {
														validators : {
															notEmpty : {
																message : 'El campo celular es un campo obligatorio'
															},
															stringLength : {
																message : 'El celular debe tener solo 9 caracteres',
																min : 9,
																max : 9
															}
														}
													},

													correo_apoderado : {
														validators : {
															notEmpty : {
																message : 'El email es un campo obligatorio'
															},
															stringLength : {
																message : 'El email es maximo de 45 caracteres',
																min : 1,
																max : 45
															}
														}
													},

												}
											});

						});
	</script>



	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#id_form_actualiza')
									.bootstrapValidator(
											{
												fields : {
													nombres_alumno : {
														selector : '#act_nombres_alumno',

														validators : {
															notEmpty : {
																message : 'El nombre es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_paterno_alumno : {
														selector : '#act_apellido_paterno_alumno',

														validators : {
															notEmpty : {
																message : 'El apellido paterno es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_materno_alumno : {
														selector : '#act_apellido_materno_alumno',

														validators : {
															notEmpty : {
																message : 'El apellido paterno es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													datepicker : {
														selector : '#act_fecha_nacimiento_alumno',

														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento obligatorio'
															},
														}
													},
													dni_alumno : {
														selector : '#act_dni_alumno',

														validators : {
															notEmpty : {
																message : 'El campo dni es un campo obligatorio'
															},
															stringLength : {
																message : 'El dni debe tener 8 caracteres',
																min : 8,
																max : 8
															}
														}
													},
													nombres_apoderado : {
														selector : '#act_nombres_apoderado',

														validators : {
															notEmpty : {
																message : 'El nombre del apoderado es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_paterno_apoderado : {
														selector : '#act_apellido_paterno_apoderado',

														validators : {
															notEmpty : {
																message : 'El apellido paterno del apoderado es obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													apellido_materno_apoderado : {
														selector : '#act_apellido_materno_apoderado',

														validators : {
															notEmpty : {
																message : 'El apellido materno del apoderadoes obligatorio'
															},
															regexp : {
																regexp : /^[a-zA-Z\s\ñ\Ñ\á\é]{0,25}$/,
																message : 'Ingrese solo letras'
															}
														}
													},
													fecha_nacimiento_apoderado : {
														selector : '#act_fecha_nacimiento_apoderado',

														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento del apoderado obligatorio'
															},
														}
													},
													dni_apoderado : {
														selector : '#act_dni_apoderado',
														validators : {
															notEmpty : {
																message : 'El campo dni es un campo obligatorio'
															},
															stringLength : {
																message : 'El dni debe tener 8 caracteres',
																min : 8,
																max : 8
															}
														}
													},

													direccion : {
														selector : '#act_direccion',

														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de alumno'
															},
														}
													},

													distrito : {
														selector : '#act_distrito',

														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de alumno'
															},
														}
													},

													celular_apoderado : {
														selector : '#act_celular_apoderado',

														validators : {
															notEmpty : {
																message : 'El campo celular es un campo obligatorio'
															},
															stringLength : {
																message : 'El celular debe tener solo 9 caracteres',
																min : 9,
																max : 9
															}
														}
													},

													correo_apoderado : {
														selector : '#act_correo_apoderado',

														validators : {
															notEmpty : {
																message : 'El email es un campo obligatorio'
															},
															stringLength : {
																message : 'El email es maximo de 45 caracteres',
																min : 1,
																max : 45
															}
														}
													},

												}
											});

						});
	</script>

</body>
</html>
