package com.guendabiaani.domain.setm

class PersonaRelacionExtraviada {
	
	String nombre
	String apellidoP
	String apellidoM
	Date fechaNac
	Integer edad
	Sexo sexo
	Parentesco parentesco	
	String domicilio
	Localidad localidad
	String telefono
	String correo
	EstadoCivil edoCivil
	Ocupacion ocupacion
	PersonaExtraviada personaExtraviada
		
	static mapping = {
		
		version(false)
	  }
	static constraints = {
		
		nombre(nullable:false)
		apellidoP(nullable:false,size:1..60)
		apellidoM(nullable:false,size:1..60)
		fechaNac(nullable:false)
		edad(nullable:false,range:1..100)
		sexo(nullable:false,size:1)
		parentesco(nullable:false,size:1..100)
		domicilio(nullable:false,size:1..100)
		localidad(nullable:false,size:1..100)
		telefono(nullable:true,size:1..10)
		correo(nullable:true,size:1..50)
		edoCivil(nullable:true,size:1..30)
		ocupacion(nullable:true,size:1..100)
		personaExtraviada(nullable:false)

		
	}

}

