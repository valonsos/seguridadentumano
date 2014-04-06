package com.guendabiaani.domain.setm

class TipoDenuncia {
	
	String descripcion;
	
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		descripcion (nullable:false)
	}

}
