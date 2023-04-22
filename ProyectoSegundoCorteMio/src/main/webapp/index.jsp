<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Universidad El Bosque</title>
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
	<div class="alert alert-success">
		<img src="Media/Loguito.png" id="logo">
		<h3 id="ins">Formulario de registro</h3>
	</div>

	<br>

	<form name="agregar" method="POST" action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">

		<div class="form-floating mb-3">
			<input id="cuadro" type="text" name="nombre" class="form-control"
				placeholder="Nombre Completo" required> <label id="label">Nombre
				Completo</label>
		</div>

		<div class="form-floating mb-3">
			<input id="cuadro" type="date" name="fecha" class="form-control"
				placeholder="Fecha de nacimiento" required> <label
				id="label">Fecha de nacimiento</label>
		</div>

		<div class="form-floating mb-3">
			<select class="form-select" id="cuadro" name="estrato" required>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
			</select> <label id="label">Estrato al que pertenece</label>
		</div>

		<div class="form-floating mb-3">
			<input id="cuadro" type="text" name="colegio" class="form-control"
				placeholder="Colegio del que se graduó" required> <label
				id="label">Colegio del que se graduó</label>
		</div>
	
	<div class="form-floating mb-3">
			<Select class="form-select" id="car" name="carrera" onchange="precio()" required>
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

			</select> <label id="label">Carrera a la que aplica</label>
			<p id="precios"></p>
			<script>
			const listaCarrera = document.getElementById('car');
			const valorSemestral = document.getElementById('precios');

			listaCarrera.addEventListener('change', () => {
			  const carreraSeleccionada = listaCarrera.value;

			  if (carreraSeleccionada === 'Arquitectura') {
			    valorSemestral.innerHTML = '$8.958.000';
			  } else if (carreraSeleccionada === 'Arte Dramatico') {
			    valorSemestral.innerHTML = '$7.350.000';
			  } else if (carreraSeleccionada === 'Artes Plasticas') {
			    valorSemestral.innerHTML = '$7.350.000';
			  } else if (carreraSeleccionada === 'Diseno Industrial') {
			    valorSemestral.innerHTML = '$8.958.000';
			  } else if (carreraSeleccionada === 'Diseno de Comunicacion') {
			    valorSemestral.innerHTML = '$8.958.000';
			  } else if (carreraSeleccionada === 'Formacion Musical') {
			    valorSemestral.innerHTML = '$8.336.000';
			  } else if (carreraSeleccionada === 'Ciencia Politica y Gobierno') {
			    valorSemestral.innerHTML = '$7.215.000';
			  }	 else if (carreraSeleccionada === 'Derecho') {
			    valorSemestral.innerHTML = '$8.125.000';
			  } else if (carreraSeleccionada === 'Filosofia') {
			    valorSemestral.innerHTML = '$3.420.000';
			  } else if (carreraSeleccionada === 'Interprete Profesional de la Lengua de Senas Colombiana (Virtual)') {
			    valorSemestral.innerHTML = '$3.918.000';
			  }	 else if (carreraSeleccionada === 'Licenciatura en Bilinguismo con Enfasis en la Ensenanza del Ingles') {
			    valorSemestral.innerHTML = '$4.418.000';
			  }	 else if (carreraSeleccionada === 'Licenciatura en Educacion Infantil') {
			    valorSemestral.innerHTML = '$3.810.000';
			  } else if (carreraSeleccionada === 'Psicologia') {
			    valorSemestral.innerHTML = '$8.622.000';
			  }	 else if (carreraSeleccionada === 'Administracion de Empresas') {
			    valorSemestral.innerHTML = '$8.319.000';
			  } else if (carreraSeleccionada === 'Negocios Internacionales') {
			    valorSemestral.innerHTML = '$8.763.000';
			  } else if (carreraSeleccionada === 'Negocios Internacionales (Virtual)') {
			    valorSemestral.innerHTML = '$8.763.000';
			  }else if (carreraSeleccionada === 'Administracion de Negocios Sostenibles') {
			    valorSemestral.innerHTML = '$8.763.000';
			  } else if (carreraSeleccionada === 'Administracion de Produccion y Logistica Internacional') {
			    valorSemestral.innerHTML = '$8.763.000';
			  }	else if (carreraSeleccionada === 'Contaduria Publica') {
			    valorSemestral.innerHTML = '$2.948.000';
			  } else if (carreraSeleccionada === 'Economia') {
			    valorSemestral.innerHTML = '$3.430.000';
			  } else if (carreraSeleccionada === 'Finanzas') {
			    valorSemestral.innerHTML = '$8.763.000';
			  }else if (carreraSeleccionada === 'Marketing y Transformacion Digital') {
			    valorSemestral.innerHTML = '$3.430.000';
			  }else if (carreraSeleccionada === 'Biologia') {
			    valorSemestral.innerHTML = '$7.448.000';
			  } else if (carreraSeleccionada === 'Estadistica') {
			    valorSemestral.innerHTML = '$5.961.000';
			  } else if (carreraSeleccionada === 'Matematicas') {
			    valorSemestral.innerHTML = '$5.228.000';
			  } else if (carreraSeleccionada === 'Quimica Farmaceutica') {
			    valorSemestral.innerHTML = '$7.903.000';
			  } else if (carreraSeleccionada === 'Enfermeria') {
			    valorSemestral.innerHTML = '$7.759.000';
			  }else if (carreraSeleccionada === 'Instrumentacion Quirurgica') {
			    valorSemestral.innerHTML = '$6.627.000';
			  } else if (carreraSeleccionada === 'Medicina') {
			    valorSemestral.innerHTML = '$27.195.000';
			  } else if (carreraSeleccionada === 'Odontologia') {
			    valorSemestral.innerHTML = '$11.788.000';
			  }else if (carreraSeleccionada === 'Optometria') {
			    valorSemestral.innerHTML = '$7.881.000';
			  } else if (carreraSeleccionada === 'Bioingenieria') {
			    valorSemestral.innerHTML = '$7.494.000';
			  }else if (carreraSeleccionada === 'Ingenieria Ambiental') {
			    valorSemestral.innerHTML = '$7.580.000';
			  } else if (carreraSeleccionada === 'Ingenieria de Sistemas') {
			    valorSemestral.innerHTML = '$6.605.000';
			  } else if (carreraSeleccionada === 'Ingenieria Electronica') {
			    valorSemestral.innerHTML = '$6.605.000';
			  } else if (carreraSeleccionada === 'Ingenieria Industrial') {
			    valorSemestral.innerHTML = '$7.300.000';
			  }else {
			    valorSemestral.innerHTML = '';
			  }
			});
			</script>
			</div>
		
		<br>
		<div class="form-check">
			<h5 id="textito">Desea Homologar</h5>
			<input class="form-check-input" type="radio" name="homologar"
				id="radio" value="No" checked> <label
				class="form-check-label"> No </label>
		</div>

		<div class="form-check">
			<input class="form-check-input" type="radio" name="homologar"
				id="radio" value="Si"> <label class="form-check-label">
				Si </label>
		</div>

		<br>
		<div>
			<h5 id="label">Suba su foto</h5>
			<input id="label" accept="image/png,image/jpeg,image/jpg" type="file"
				class="form-control-file" name="foto" required>
		</div>

		<br> <input type="submit" class="btn btn-success" value="Enviar" name="send"
			id="label">
	</form>
	
	<br>
	
	<form name="mostrar" method="GET"
		action="http://localhost:8080/ProyectoSegundoCorteMio/formServlet">
	
	<input type="submit" class="btn btn-info" value="Manejar Aspirantes" name ="mos"
			id="label">
	</form>
</body>
</html>