import {Casillero} from "./Casillero.js";

const arrayCasilleros = [];
let turnoUsuario = true;
let turnoCPU= false;
const obtenerNumeroAleatorio = () => Math.round(Math.random()*8);
console.log(obtenerNumeroAleatorio());
(function(){
	arrayCasilleros.push(new Casillero("casillero11",0));
	arrayCasilleros.push(new Casillero("casillero12",1));
	arrayCasilleros.push(new Casillero("casillero13",2));
	arrayCasilleros.push(new Casillero("casillero21",3));
	arrayCasilleros.push(new Casillero("casillero22",4));
	arrayCasilleros.push(new Casillero("casillero23",5));
	arrayCasilleros.push(new Casillero("casillero31",6));
	arrayCasilleros.push(new Casillero("casillero32",7));
	arrayCasilleros.push(new Casillero("casillero33",8));
})();
(function(){
	let  cont = 1;
	for(const elemento of arrayCasilleros){
		if(cont <=3) document.getElementById("fila1").innerHTML+= elemento.obtenerEtiqueta();
		if(cont >3 && cont <=6) document.getElementById("fila2").innerHTML += elemento.obtenerEtiqueta();
		if(cont >6 && cont<=9) document.getElementById("fila3").innerHTML += elemento.obtenerEtiqueta();
		cont++;
	}
})();

(function(){
	arrayCasilleros.forEach(elemento=>{
		document.getElementById(elemento.Id).onclick = function(){
			marcar(elemento.Id);
		}
	})
})();


let existeGanador = false;
function marcar(idElemento){
	if(existeGanador != true){
		if(document.getElementById(idElemento).innerHTML == "" && (turnoUsuario === true)){
			document.getElementById(idElemento).innerHTML = "X";
			turnoUsuario = false;
			turnoCPU = true;
		}
		if(verificarTableroLleno()!==true){
			marcarCPU();
			
		}
		existeGanador = verificarGanador();
		if(existeGanador){
			alert("GANASTE");
			document.getElementById("idPuntaje").value=200;
		}
	}
	else if(verificarTableroLleno()&& existeGanador !== true){
		alert("PERDISTE");
	}
	else{
		alert("Ya existe un ganador");
	}
}
function marcarCPU(){
	if(turnoCPU !== true && turnoUsuario !== false) return 0;
	
	do
	{
		let numeroAleatorio = obtenerNumeroAleatorio();
		let idCasillero = arrayCasilleros[numeroAleatorio].Id;
		if(document.getElementById(idCasillero).innerHTML=="")
		{
			document.getElementById(idCasillero).innerHTML ="O";
			turnoUsuario = true;
			turnoCPU = false;	
		}
	}while(turnoCPU == true);
}
function verificarTableroLleno() {
	for(const elemento of arrayCasilleros) if(document.getElementById(elemento.Id).innerHTML ==="") return false;
	return true;
}

function verificarGanador(){
	let celdas = [[0,1,2],[3,4,5],[6,7,8]];
	let hayGanador = false;
	for(let j = 0; j < 3; j++){
		if(document.getElementById(arrayCasilleros[celdas[j][0]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][1]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][2]].Id).innerHTML==="X") {
			hayGanador = true;
			break;
		}	
	}
	if(hayGanador != true){
		let celdas =[[0,3,6],[1,4,7],[2,5,8]]
		for(let j = 0; j < 3; j++){
			if(document.getElementById(arrayCasilleros[celdas[j][0]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][1]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][2]].Id).innerHTML==="X") {
				hayGanador = true;
				break;
			}	
		}
	}
	if(hayGanador !=true){
		let celdas = [[0,4,8],[2,4,6]];
		for(let j = 0; j < 2; j++){
			if(document.getElementById(arrayCasilleros[celdas[j][0]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][1]].Id).innerHTML==="X" && document.getElementById(arrayCasilleros[celdas[j][2]].Id).innerHTML==="X") {
				hayGanador = true;
				break;
			}	
		}
	}
	return hayGanador;
}

