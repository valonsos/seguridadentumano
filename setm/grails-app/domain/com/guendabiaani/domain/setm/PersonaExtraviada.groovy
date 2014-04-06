package com.guendabiaani.domain.setm

class PersonaExtraviada {
	
	String nombre
	String apellidoP
	String apellidoM
	Date fechaNac
	String alias
	Integer edad
	Sexo sexo
	Double estatura
	String complexion
	TipoCabello tipoCabello
	ColorCabello colorCabello
	ColorOjos colorOjos
	String vestimenta
	Nacionalidad nacionalidad
	String domicilio
	Localidad localidad
	String telefono
	String correo
	EstadoCivil edoCivil
	String gustosPreferencias
	String curp
	String cveIfe	
	Date ultimaFechaVisto
	NivelEstudio maxNivelEstudio
	String nombreInstitucionEducativo
	String domicilioInstitucionEducativa
	Ocupacion ocupacion
	String nombreEmpresa
	String telefonoEmpresa
	Integer antiguedad
	String domicilioLaboral
	String enfermedadesDetectadas
	String medicamentosSuministrados
	GrupoSanguineo grupoSanguineo
	String numeroAfiliacionSeguroSocial
	Transporte transporteUtilizado
	TipoAusencia tipoAusencia
	Date horaAusencia
	boolean acompanado
	Adicciones adicciones	
	String parentescoCampania
	String ultimoLugarVisto
	String conducta
	String descripcionProblemaCausa
	Long latitud
	Long longitud
	
	static mapping = {		
		version(false)
	  }
	
static constraints = {
		
		nombre(nullable:false)
		apellidoP(nullable:false,size:1..60)
		apellidoM(nullable:true,size:1..60)
		fechaNac(nullable:false)
		alias(nullable:true,size:1..60)
		edad(nullable:false,range:1..100)
		sexo(nullable:false,size:1)
		estatura(nullable:false,range:0..3)
		complexion(nullable:false,size:1..50)
		tipoCabello(nullable:true,size:1..50)
		colorCabello(nullable:true,size:1..50)
		colorOjos(nullable:true,size:1..50)
		vestimenta(nullable:true,size:1..50)
		nacionalidad(nullable:true,size:1..100)
		domicilio(nullable:false,size:1..100)
		localidad(nullable:false,size:1..100)
		telefono(nullable:true,size:1..10)
		correo(nullable:true,size:1..50)
		edoCivil(nullable:true,size:1..30)
		gustosPreferencias(nullable:true,size:1..100)
		curp(nullable:true,size:1..18)
		cveIfe(nullable:true,size:1..11)
		ultimaFechaVisto(nullable:false)
		maxNivelEstudio(nullable:false,size:1..100)
		nombreInstitucionEducativo(nullable:false,size:1..100)
		ocupacion(nullable:true,size:1..100)
		nombreEmpresa(nullable:true,size:1..100)
		telefonoEmpresa(nullable:true,size:1..100)
		antiguedad(nullable:true)
		domicilioLaboral(nullable:true,size:1..100)
		enfermedadesDetectadas(nullable:true,size:1..100)
		medicamentosSuministrados(nullable:true,size:1..100)
		grupoSanguineo(nullable:true,size:1..100)
		numeroAfiliacionSeguroSocial(nullable:true,size:1..100)
		transporteUtilizado(nullable:true,size:1..100)
		tipoAusencia(nullable:false,size:1..100)
		horaAusencia(nullable:false)
		adicciones(nullable:true,size:1..100)
		parentescoCampania(nullable:true,size:1..100)
		ultimoLugarVisto(nullable:true,size:1..100)
		conducta(nullable:true,size:1..100)
		descripcionProblemaCausa(nullable:true,size:1..100)
		latitud(nullable:false)
		longitud(nullable:false)	

		
	}

}
