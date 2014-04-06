package com.guendabiaani.domain.setm

import java.util.List;

class ExtorsionTelefonica {
	
	String numero;
	Date hora;
	Date fecha;
	String descripcion;
	Denuncia idDenuncia;
	
	static constraints = {
		numero(nullable:true,size:1..10)
		hora(nullable:true)
		fecha(nullable:true)
		descripcion(nullable:false)
		idDenuncia(nullable:false);
		
	}

    static mapping = {
		version(false)
  }
	

}
