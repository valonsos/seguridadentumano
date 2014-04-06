package com.guendabiaani.domain.setm

class TipoAusencia {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
