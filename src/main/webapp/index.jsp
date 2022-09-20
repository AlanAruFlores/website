<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@500&family=Kanit:wght@300&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@500&family=Kanit:wght@300&family=Mouse+Memoirs&family=Oswald:wght@300;400&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="./styles/style.css">
	<title>El titulo de la pagina principal</title>
</head>
<body>
	<header class="row">
		<h1>Bievenido al Juego</h1>
	</header>
	<main class="row">
		<div class="row miFormulario">
			<form class="col-md-12 Formulario" action="./controller/controllerRegister.jsp" method = "POST">
				<h2>Crear Usuario</h2>
  				<input type="text" name="nombreUsuario" required class="form-control" placeholder="Usuario" aria-label="Username" aria-describedby="basic-addon1">
				<button class="btn">Ingresar</button>				
			</form>
		</div>	
		<div class="row information">
			<div class="col-md-6 columnaImagen">
				<img src="./assets/pregunta.png" alt="tateti imagen">
			</div>
			<div class="col-md-6 columnaTexto">
				<div class="box-information">
					<h2>�En que consiste el sitio web?</h2>
					<p>El sitio web fue implementado con el fin de que los usuarios puedan jugar a un divertido juego clasico denominado "Ta te ti"</p>
				</div>
				<div class="box-information">
					<h2>�Como entro al Juego?</h2>
					<p> Siga los pasos que le dejaremos a continuacion para que usted pueda jugar al mismo: </p>
					<ol>
						<li>Ingrese un nombre de usuario</li>
						<li>Luego de ingresar su nombre, va a jugar con un bot</li>
						<li>Luego de que termine, Se mostrara una tabla de puntajes</li>
					</ol>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<ul>
			<li>Terminos</li>
			<li>Condiciones</li>
			<li>Informacion</li>
			<li>Sobre Mi</li>
		</ul>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>
