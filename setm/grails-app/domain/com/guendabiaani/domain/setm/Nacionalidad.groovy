package com.guendabiaani.domain.setm

class Nacionalidad {

	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}
}
