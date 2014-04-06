package com.guendabiaani.domain.setm

class Ruta {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}
	

}
