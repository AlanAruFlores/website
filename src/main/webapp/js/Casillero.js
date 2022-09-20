/**
 * 
 */
 
 export class Casillero{
	
	constructor(id,nro){
		this.id = id;
		this.nro
	}
	get Id(){
		return this.id;
	}
	get Nro(){
		return this.Nro;
	}
	obtenerEtiqueta(){
		return `<td id="${this.id}"></td>`
	}
}