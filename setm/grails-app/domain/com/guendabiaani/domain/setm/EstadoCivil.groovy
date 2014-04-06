package com.guendabiaani.domain.setm

class EstadoCivil {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
