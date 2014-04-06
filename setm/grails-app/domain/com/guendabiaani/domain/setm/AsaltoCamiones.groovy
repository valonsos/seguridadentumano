package com.guendabiaani.domain.setm

class AsaltoCamiones {
	
	String numeroCamion;
	Ruta ruta;
	Compania conpania;
	Date horaAsalto;
	Date fechaAsalto;
	String lugar;
	String descripcion;
	Denuncia idDenuncia;
	
	static mapping = {
		version(false)
	  }
	static constraints = {
	
		numeroCamion(nullable:true)
		ruta(nullable:false)
		horaAsalto(nullable:false)
		fechaAsalto(nullable:false)
		lugar(nullable:false)
		descripcion(nullable:false)
		idDenuncia(nullable:false)
		
	}
	

}
