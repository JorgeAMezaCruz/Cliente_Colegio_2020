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
<title>Docente</title>

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
					<h3 class="m-0 font-weight-bold text-dark">Listado de Docentes</h3>
					<br>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#modalProgramador">Nuevo Docente</button>



				</div>
				<div class="card-body">
					<table class="table table-striped">
						<tbody>
							<tr>
								<th>Código</th>
								<th>Nombre</th>
								<th>Apellido Paterno</th>
								<th>Apellido Materno</th>
								<th>Fecha de Nacimiento</th>
								<th>DNI</th>
								<th>Direccion</th>
								<th>Distrito</th>
								<th>Celular</th>
								<th>Correo</th>
								<th></th>
							</tr>


							<c:forEach items="${requestScope.dataDocentes}" var="row">
								<tr>
									<td>${row.idDocente}</td>
									<td>${row.nomDocente}</td>
									<td>${row.apePaternoDocente}</td>
									<td>${row.apeMaternoDocente}</td>
									<td>${row.fecha}</td>
									<td>${row.dniDocente}</td>
									<td>${row.direccionDocente}</td>
									<td>${row.distritoDocente}</td>
									<td>${row.celularDocente}</td>
									<td>${row.correoDocente}</td>
									<td>
										<button type='button' data-toggle='modal'
											onclick="editar('${row.idDocente}','${row.nomDocente}','${row.apePaternoDocente}','${row.apeMaternoDocente}','${row.fecha}',
													'${row.dniDocente}','${row.direccionDocente}',
													'${row.distritoDocente}','${row.celularDocente}','${row.correoDocente}');"
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
							<h5 class="modal-title" id="idTitulo">Registrar Docente</h5>
						</div>
						<div class="modal-body">
							<form id="frmProgramador" action="saveDocente" method="post"
								data-toggle="validator" role="form">
								<div class="row">
									<div hidden class="form-group">
										<label for="id_ID">Codigo de Docente</label> <input
											class="form-control" id="id_ID" readonly="readonly"
											name="id_docente" type="text" value="0" />
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Nombre</label> <input
											type="text" class="form-control" name="nombres_docente"
											id="nombres_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno</label> <input
											type="text" class="form-control"
											name="apellido_paterno_docente" id="apellido_paterno_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno</label> <input
											type="text" class="form-control"
											name="apellido_materno_docente" id="apellido_materno_docente">
									</div>
								</div>
								<div class="row">


									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_docente" id="datepicker">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input
											type="number" class="form-control" name="dni_docente"
											id="dni_docente">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Direccion</label> <input
											type="text" class="form-control" name="direccion_docente"
											id="direccion_docente">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Distrito</label> <input
											type="text" class="form-control" name="distrito_docente"
											id="distrito_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Celular</label> <input
											type="number" class="form-control" name="celular_docente"
											id="celular_docente">
									</div>

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Correo</label> <input
											type="email" class="form-control" name="correo_docente"
											id="correo_docente">
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
								docente</h5>
						</div>
						<div class="modal-body">
							<form id="id_form_actualiza" accept-charset="UTF-8"
								action="saveDocente" class="form-horizontal" method="post">
								<div class="row">
									<div class="form-group col-md-12">
										<label for="id_ID">Codigo de Docente</label> <input
											class="form-control" id="id_ID" readonly="readonly"
											name="id_docente" type="text" maxlength="8" />
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Nombres</label> <input
											type="text" class="form-control" name="nombres_docente"
											id="act_nombres_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Paterno</label> <input
											type="text" class="form-control"
											name="apellido_paterno_docente"
											id="act_apellido_paterno_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Apellido Materno</label> <input
											type="text" class="form-control"
											name="apellido_materno_docente"
											id="act_apellido_materno_docente">
									</div>

								</div>
								<div class="row">
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Fecha de Nacimiento</label> <input
											type="date" class="form-control"
											name="fecha_nacimiento_docente"
											id="act_fecha_nacimiento_docente">
									</div>

									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Dni</label> <input type="text"
											class="form-control" name="dni_docente" id="act_dni_docente">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Direccion</label> <input
											type="text" class="form-control" name="direccion_docente"
											id="act_direccion_docente">
									</div>
									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Distrito</label> <input
											type="text" class="form-control" name="distrito_docente"
											id="act_distrito_docente">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputEmail1">Celular</label> <input
											type="number" class="form-control" name="celular_docente"
											id="act_celular_docente">
									</div>

									<div class="form-group col-md-12">
										<label for="exampleInputEmail1">Correo</label> <input
											type="text" class="form-control" name="correo_docente"
											id="act_correo_docente">
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
		function editar(id, nom, apePaterno, apeMaterno, fecha, dni, direccion,
				distrito, celular, correo) {
			$('input[id=id_ID]').val(id);
			$('input[id=act_nombres_docente]').val(nom);
			$('input[id=act_apellido_paterno_docente]').val(apePaterno);
			$('input[id=act_apellido_materno_docente]').val(apeMaterno);
			$('input[id=act_fecha_nacimiento_docente]').val(fecha);
			$('input[id=act_dni_docente]').val(dni);
			$('input[id=act_direccion_docente]').val(direccion);
			$('input[id=act_distrito_docente]').val(distrito);
			$('input[id=act_celular_docente]').val(celular);
			$('input[id=act_correo_docente]').val(correo);
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
													nombres_docente : {
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
													apellido_paterno_docente : {
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
													apellido_materno_docente : {
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
													fecha_nacimiento_docente : {
														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento obligatorio'
															},
														}
													},
													dni_docente : {
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

													direccion_docente : {
														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de docente'
															},
														}
													},

													distrito_docente : {
														validators : {
															notEmpty : {
																message : 'Ingrese el distrito de docente'
															},
														}
													},

													celular_docente : {
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

													correo_docente : {
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
													nombres_docente : {
														selector : '#act_nombres_docente',

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
													apellido_paterno_docente : {
														selector : '#act_apellido_paterno_docente',

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
													apellido_materno_docente : {
														selector : '#act_apellido_materno_docente',

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
														selector : '#act_fecha_nacimiento_docente',

														validators : {
															notEmpty : {
																message : 'Fecha de nacimiento obligatorio'
															},
														}
													},
													dni_docente : {
														selector : '#act_dni_docente',

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

													direccion_docente : {
														selector : '#act_direccion_docente',

														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de docente'
															},
														}
													},

													distrito_docente : {
														selector : '#act_distrito_docente',

														validators : {
															notEmpty : {
																message : 'Ingrese la direccion de docente'
															},
														}
													},

													celular_docente : {
														selector : '#act_celular_docente',

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

													correo_docente : {
														selector : '#act_correo_docente',

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
