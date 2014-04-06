package com.guendabiaani.domain.setm

class Denuncia {
	
	Date fecha;
	Date hora;
	CatologoDelitos delito;
	TipoDenuncia tipoDenuncia;
	PersonaDenunciante personaDenunciante;
	PersonaExtraviada personaExtraviada;
	
	
	
	static mapping= {
		version(false);
		
	}
	static constraints = {
		fecha (nullable:false)
		hora (nullable:false)
		personaDenunciante(nullable:false)
		personaExtraviada(nullable:true);		
	}
	

}
