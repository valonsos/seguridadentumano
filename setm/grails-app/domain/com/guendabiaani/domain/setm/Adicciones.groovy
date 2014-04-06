package com.guendabiaani.domain.setm

class Adicciones {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
