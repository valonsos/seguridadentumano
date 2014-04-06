package com.guendabiaani.domain.setm

class Parentesco {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
