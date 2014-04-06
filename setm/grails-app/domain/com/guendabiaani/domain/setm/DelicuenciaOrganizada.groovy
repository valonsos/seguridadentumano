package com.guendabiaani.domain.setm

class DelicuenciaOrganizada {
	
	Localidad localidad;
	String referenciaUbicacion;
	Denuncia idDenuncia;
	String descripcion;
	
	static mapping = {
		version(false)
	  }
	static constraints = {
	
		localidad(nullable:false)
		referenciaUbicacion(nullable:false)
		idDenuncia(nullable:false)
		descripcion(nullable:false)
		
		
	}
	
	
	

}
