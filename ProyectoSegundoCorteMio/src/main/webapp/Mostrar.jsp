<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Aspirantes</title>
<link href="Styles/Style.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
</head>
<body>
	<h1 class="alert alert-success">Manejo de aspirantes</h1>
	<br>
	<form name="listar" method="GET"
		action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">
		<h3 id= "label">Listar todos los aspirantes</h3>
		<input type="submit" class="btn btn-outline-primary" value="Mostrar"
			name="mos" id="label">
	</form>
	<br>
	<form name="porCarrera" method="GET"
		action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">
		<div class="form-floating mb-3">
			<Select class="form-select" id="car" name="carreraS" required>
			<option value="Arquitectura">Arquitectura</option>
				<option value="Arte Dramatico">Arte Dramático</option>
				<option value="Artes Plasticas">Artes Plásticas</option>
				<option value="Diseno Industrial">Diseño Industrial</option>
				<option value="Diseno de Comunicacion">Diseño de
					Comunicación</option>
				<option value="Formacion Musical">Formación Musical</option>
				<option value="Ciencia Politica y Gobierno">Ciencia
					Política y Gobierno</option>
				<option value="Derecho">Derecho</option>
				<option value="Filosofia">Filosofía</option>
				<option
					value="Interprete Profesional de la Lengua de Senas Colombiana (Virtual)">Intérprete
					Profesional de la Lengua de Señas Colombiana (Virtual)</option>
				<option
					value="Licenciatura en Bilinguismo con Enfasis en la Ensenanza del Ingles">Licenciatura
					en Bilingüismo con Énfasis en la Enseñanza del Inglés</option>
				<option value="Licenciatura en Educacion Infantil">Licenciatura
					en Educación Infantil</option>
				<option value="Psicologia">Psicología</option>
				<option value="Administracion de Empresas">Administración
					de Empresas</option>
				<option value="Negocios Internacionales">Negocios
					Internacionales</option>
				<option value="Negocios Internacionales (Virtual)">Negocios
					Internacionales (Virtual)</option>
				<option value="Administracion de Negocios Sostenibles">Administración
					de Negocios Sostenibles</option>
				<option
					value="Administracion de Produccion y Logistica Internacional">Administración
					de Producción y Logística Internacional</option>
				<option value="Contaduria Publica">Contaduría Pública</option>
				<option value="Economia">Economía</option>
				<option value="Finanzas">Finanzas</option>
				<option value="Marketing y Transformacion Digital">Marketing
					y Transformación Digital</option>
				<option value="Biologia">Biología</option>
				<option value="Estadistica">Estadística</option>
				<option value="Matematicas">Matemáticas</option>
				<option value="Quimica Farmaceutica">Química Farmacéutica</option>
				<option value="Enfermeria">Enfermería</option>
				<option value="Instrumentacion Quirurgica">Instrumentación
					Quirúrgica</option>
				<option value="Medicina">Medicina</option>
				<option value="Odontologia">Odontología</option>
				<option value="Optometria">Optometría</option>
				<option value="Bioingenieria">Bioingeniería</option>
				<option value="Ingenieria Ambiental">Ingeniería Ambiental</option>
				<option value="Ingenieria de Sistemas">Ingeniería de
					Sistemas</option>
				<option value="Ingenieria Electronica">Ingeniería
					Electrónica</option>
				<option value="Ingenieria Industrial">Ingeniería Industrial</option>

			</select> <label id="label">Carrera por la que quiere listar</label>
		</div>
		<input type="submit" class="btn btn-outline-info" value="Mostrar por carrera"
			name="mos" id="label">
	</form>
	<br>
	<form name="delete" method="POST"
		action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">

		<div class="form-floating mb-3">
			<input id="cuadro" type="text" name="nomEliminar"
				class="form-control"
				placeholder="Digite el nombre del aspirante a eliminar" required>
			<label id="label">Digite el nombre del aspirante a eliminar</label>
		</div>

		<input type="submit" class="btn btn-danger" value="Eliminar"
			name="send" id="label">
	</form>
	
	<br>
		
	<form name="update" method="POST"
		action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">

		<div class="form-floating mb-3">
			<input id="cuadro" type="text" name="nomActualizar"
				class="form-control"
				placeholder="Digite el nombre del aspirante a actualizar" required>
			<label id="label">Digite el nombre del aspirante a actualizar</label>
		</div>
		
		<div class="form-floating mb-3">
			<Select class="form-select" id="car" name="carreraUpdate" required>
				<option value="Arquitectura">Arquitectura</option>
				<option value="Arte Dramatico">Arte Dramático</option>
				<option value="Artes Plasticas">Artes Plásticas</option>
				<option value="Diseno Industrial">Diseño Industrial</option>
				<option value="Diseno de Comunicacion">Diseño de Comunicación</option>
				<option value="Formacion Musical">Formación Musical</option>
				<option value="Ciencia Politica y Gobierno">Ciencia
					Política y Gobierno</option>
				<option value="Derecho">Derecho</option>
				<option value="Filosofia">Filosofía</option>
				<option
					value="Interprete Profesional de la Lengua de Senas Colombiana (Virtual)">Intérprete
					Profesional de la Lengua de Señas Colombiana (Virtual)</option>
				<option
					value="Licenciatura en Bilinguismo con Enfasis en la Ensenanza del Ingles">Licenciatura
					en Bilingüismo con Énfasis en la Enseñanza del Inglés</option>
				<option value="Licenciatura en Educacion Infantil">Licenciatura
					en Educación Infantil</option>
				<option value="Psicologia">Psicología</option>
				<option value="Administracion de Empresas">Administración
					de Empresas</option>
				<option value="Negocios Internacionales">Negocios
					Internacionales</option>
				<option value="Negocios Internacionales (Virtual)">Negocios
					Internacionales (Virtual)</option>
				<option value="Administración de Negocios Sostenibles">Administración
					de Negocios Sostenibles</option>
				<option
					value="Administracion de Produccion y Logistica Internacional">Administración
					de Producción y Logística Internacional</option>
				<option value="Contaduria Publica">Contaduría Pública</option>
				<option value="Economia">Economía</option>
				<option value="Finanzas">Finanzas</option>
				<option value="Marketing y Transformacion Digital">Marketing
					y Transformación Digital</option>
				<option value="Biologia">Biología</option>
				<option value="Estadistica">Estadística</option>
				<option value="Matematicas">Matemáticas</option>
				<option value="Quimica Farmaceutica">Química Farmacéutica</option>
				<option value="Enfermeria">Enfermería</option>
				<option value="Instrumentacion Quirurgica">Instrumentación
					Quirúrgica</option>
				<option value="Medicina">Medicina</option>
				<option value="Odontologia">Odontología</option>
				<option value="Optometria">Optometría</option>
				<option value="Bioingenieria">Bioingeniería</option>
				<option value="Ingenieria Ambiental">Ingeniería Ambiental</option>
				<option value="Ingenieria de Sistemas">Ingeniería de
					Sistemas</option>
				<option value="Ingenieria Electronica">Ingeniería
					Electrónica</option>
				<option value="Ingenieria Industrial">Ingeniería Industrial</option>

			</select> <label id="label">Actualizar la nueva carrera</label>
		</div>

		<div class="form-check">
			<h5 id="textito">Va a homologar</h5>
			<input class="form-check-input" type="radio" name="homologarAct"
				id="radio" value="No" checked> <label
				class="form-check-label"> No </label>
		</div>
		
		<div class="form-check">
			<input class="form-check-input" type="radio" name="homologarAct"
				id="radio" value="Si"> <label class="form-check-label">
				Si </label>
		</div>
		
		<input type="submit" class="btn btn-warning" value="Actualizar"
			name="send" id="label">
	</form>

</body>
</html>
