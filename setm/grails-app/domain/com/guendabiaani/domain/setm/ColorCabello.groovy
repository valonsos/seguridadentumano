package com.guendabiaani.domain.setm

class ColorCabello {
	
	String descripcion;
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion(nullable:false)
	}

}
