package com.guendabiaani.domain.setm

class CatologoDelitos {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
