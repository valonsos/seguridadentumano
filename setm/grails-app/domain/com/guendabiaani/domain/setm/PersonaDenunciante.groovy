package com.guendabiaani.domain.setm

class PersonaDenunciante {
		
		String nombre
		String apellidoP
		String apellidoM
		Integer edad
		Sexo sexo
		Parentesco parentesco
		String domicilio
		Localidad localidad
		String telefono
		String correo
		EstadoCivil edoCivil
		Ocupacion ocupacion
		String domicilioLaboral
		String telefonoLaboral
		
		
		static mapping = {			
			version(false)
		  }
		static constraints = {
		
			nombre(nullable:false,size:1..60)
			apellidoP(nullable:false,size:1..60)
			apellidoM(nullable:false,size:1..60)
			edad(nullable:false,range:1..100)
			sexo(nullable:false,size:1)
			parentesco(nullable:false,size:1..100)
			domicilio(nullable:false,size:1..100)
			localidad(nullable:false,size:1..100)
			telefono(nullable:true,size:1..10)
			correo(nullable:true,size:1..50)
			edoCivil(nullable:true,size:1..30)
			ocupacion(nullable:true,size:1..100)
			domicilioLaboral(nullable:true,size:1..100)
			telefonoLaboral(nullable:true,size:1..10)
				
		}
	
}

