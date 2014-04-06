package com.guendabiaani.domain.setm

class GrupoSanguineo {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
