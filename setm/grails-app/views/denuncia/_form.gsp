<%@ page import="com.guendabiaani.domain.setm.Denuncia" %>

 <div id="rootwizard">
    <div class="navbar">
    <div class="navbar-inner">
    <div class="container">
    <ul>
    <li><a href="#tab1" data-toggle="tab">Denunciante</a></li>
    <li><a href="#tab2" data-toggle="tab">Extraviado</a></li>
    <li><a href="#tab3" data-toggle="tab">Mapa último lugar</a></li>
    <li><a href="#tab4" data-toggle="tab">Persona Relacionada</a></li>
    <li><a href="#tab5" data-toggle="tab">Descripcion hechos</a></li>
    </ul>
    </div>
    </div>
    </div>
    
    <div class="tab-content">
    <div class="tab-pane" id="tab1">


<div class="row">
<div class="panel panel-default col-lg-10 col-md-10 col-xs-10">
	 <div class="panel-heading"><h4>Datos denuncia </h4> </div>
	 <br>
	 
	 <div class="panel-body">
	 <form role="form" >
	 	<div class="form-group">
	 		
	    	<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'fecha', 'error')} col-lg-6 col-md-6 col-xs-6 required">
		<label for="fecha">
			<g:message code="denuncia.fecha.label" default="Fecha" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="fecha" precision="day"  class='datepicker form-control' value="${denunciaInstance?.fecha}"  />
		</div>
		
		
	    <div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'hora', 'error')} col-lg-6 col-md-6 col-xs-6 required">
		<label for="hora">
			<g:message code="denuncia.hora.label" default="Hora" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="hora" precision="day" class='timepicker form-control' value="${denunciaInstance?.hora}"  />
	</div>
		
	<br>
	<br>

	<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'delito', 'error')} required">
		<label for="delito">
			<g:message code="denuncia.delito.label" default="Delito" />
			<span class="required-indicator">*</span>
		</label>
		<g:select id="delito" name="delito.id" from="${com.guendabiaani.domain.setm.CatologoDelitos.list()}" optionValue="descripcion" optionKey="id" required="" value="${denunciaInstance?.delito?.id}" class="form-control many-to-one"/>
	</div>

	<br>
	<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'tipoDenuncia', 'error')} required">
		<label for="tipoDenuncia">
			<g:message code="denuncia.tipoDenuncia.label" default="Tipo Denuncia" />
			<span class="required-indicator">*</span>
		</label>
		<g:select id="tipoDenuncia" name="tipoDenuncia.id" from="${com.guendabiaani.domain.setm.TipoDenuncia.list()}" optionValue="descripcion" optionKey="id" required="" value="${denunciaInstance?.tipoDenuncia?.id}" class="form-control many-to-one"/>
	</div>
	</div>
	</div>
</div>


<div class="panel panel-default col-lg-10 col-md-10 col-xs-10">

<div class="panel-heading"><h4>Persona que denuncia</h4></div>
<div class="row">
<div class="col-lg-10 col-md-10 col-xs-10">

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'nombre', 'error')} ">
	<br><label for="nombre">
		<g:message code="personaDenunciante.nombre.label" default="Nombre(s)" />
		
	</label>
	<g:textField name="nombre" maxlength="60" value="${personaDenuncianteInstance?.nombre}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'apellidoP', 'error')} ">
	<br><label for="apellidoP">
		<g:message code="personaDenunciante.apellidoP.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoP" maxlength="60" value="${personaDenuncianteInstance?.apellidoP}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'apellidoM', 'error')} ">
	<br><label for="apellidoM">
		<g:message code="personaDenunciante.apellidoM.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaDenuncianteInstance?.apellidoM}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'edad', 'error')} required">
	<br><label for="edad">
		<g:message code="personaDenunciante.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad" class ='form-control' from="${1..100}" class="range" required="" value="${fieldValue(bean: personaDenuncianteInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'sexo', 'error')} required">
	<br><label for="sexo">
		<g:message code="personaDenunciante.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaDenuncianteInstance?.sexo?.descripcion}" optionValue="descripcion" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'parentesco', 'error')} required">
	<br><label for="parentesco">
		<g:message code="personaDenunciante.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parentesco" name="parentesco.id" from="${com.guendabiaani.domain.setm.Parentesco.list()}" optionKey="id" required="" optionValue="descripcion" value="${personaDenuncianteInstance?.parentesco?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'domicilio', 'error')} ">
	<br><label for="domicilio">
		<g:message code="personaDenunciante.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaDenuncianteInstance?.domicilio}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'localidad', 'error')} required">
	<br><label for="localidad">
		<g:message code="personaDenunciante.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaDenuncianteInstance?.localidad?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'telefono', 'error')} ">
	<br><label for="telefono">
		<g:message code="personaDenunciante.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaDenuncianteInstance?.telefono}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'correo', 'error')} ">
	<br><label for="correo">
		<g:message code="personaDenunciante.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaDenuncianteInstance?.correo}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'edoCivil', 'error')} ">
	<br><label for="edoCivil">
		<g:message code="personaDenunciante.edoCivil.label" default="Estado Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" optionValue="descripcion" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaDenuncianteInstance?.edoCivil?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'ocupacion', 'error')} ">
	<br><label for="ocupacion">
		<g:message code="personaDenunciante.ocupacion.label" default="Ocupación" />
		
	</label>
	<g:select id="ocupacion" optionValue="descripcion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaDenuncianteInstance?.ocupacion?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'domicilioLaboral', 'error')} ">
	<br><label for="domicilioLaboral">
		<g:message code="personaDenunciante.domicilioLaboral.label" default="Domicilio Laboral" />
		
	</label>
	<g:textField name="domicilioLaboral" maxlength="100" value="${personaDenuncianteInstance?.domicilioLaboral}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'telefonoLaboral', 'error')} ">
	<br><label for="telefonoLaboral">
		<g:message code="personaDenunciante.telefonoLaboral.label" default="Telefono Laboral" />
		
	</label>
	<g:textField name="telefonoLaboral" maxlength="10" value="${personaDenuncianteInstance?.telefonoLaboral}" class=" form-control"/>
</div>



    </div>
    </form>
    
    </div>
    </div>
    </div>
    </div>
    
    
    
    <div class="tab-pane" id="tab2">
<div class="row">
<div class="panel panel-default col-lg-10 col-md-10 col-xs-10">
<div class="panel panel-heading"> <h4>Datos de la persona extraviada </h4> </div>
<div class="panel panel-body">
<form role="form">
	<div class="form-group">
	<div clas="row">
	<div class="col-lg-8 col-md-8 col-xs-8">
	   <div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombre', 'error')} ">
	<br><label for="nombre">
		<g:message code="personaExtraviada.nombre.label" default="Nombre" /> 
		
	</label>
<g:textField name="nombre" value="${personaExtraviadaInstance?.nombre}" class="form-control" /> 
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'apellidoP', 'error')} ">
	<br><label for="apellidoP">
		<g:message code="personaExtraviada.apellidoP.label" default="Apellido Paterno" />
		
	</label>
<g:textField name="apellidoP" maxlength="60" value="${personaExtraviadaInstance?.apellidoP}" class=" form-control"/> 
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'apellidoM', 'error')} ">
	<br><label for="apellidoM">
		<g:message code="personaExtraviada.apellidoM.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaExtraviadaInstance?.apellidoM}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'fechaNac', 'error')} required">
	<br><label for="fechaNac">
		<g:message code="personaExtraviada.fechaNac.label" default="Fecha Nacimiento" class=" form-control" />
		<span class="required-indicator">*</span>
	</label>
	<input class="datepicker form-control" name="fechaNac" precision="day"  value="${personaExtraviadaInstance?.fechaNac}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'alias', 'error')} ">
	<br><label for="alias">
		<g:message code="personaExtraviada.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" maxlength="60" value="${personaExtraviadaInstance?.alias}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'edad', 'error')} required">
	<br><label for="edad">
		<g:message code="personaExtraviada.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad" from="${1..100}" class="form-control range" required="" value="${fieldValue(bean: personaExtraviadaInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'sexo', 'error')} required">
	<br><label for="sexo">
		<g:message code="personaExtraviada.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.sexo?.id}" optionValue="descripcion" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'estatura', 'error')} required">
	<br><label for="estatura">
		<g:message code="personaExtraviada.estatura.label" default="Estatura" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estatura" from="${0..3}" class="form-control range" required="" value="${fieldValue(bean: personaExtraviadaInstance, field: 'estatura')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'complexion', 'error')} ">
	<br><label for="complexion">
		<g:message code="personaExtraviada.complexion.label" default="Complexion" />
		
	</label>
	<g:textField name="complexion" maxlength="50" value="${personaExtraviadaInstance?.complexion}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'tipoCabello', 'error')} ">
	<br><label for="tipoCabello">
		<g:message code="personaExtraviada.tipoCabello.label" default="Tipo Cabello" />
		
	</label>
	<g:select id="tipoCabello" optionValue="descripcion" name="tipoCabello.id" from="${com.guendabiaani.domain.setm.TipoCabello.list()}" optionKey="id" value="${personaExtraviadaInstance?.tipoCabello?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'colorCabello', 'error')} ">
	<br><label for="colorCabello">
		<g:message code="personaExtraviada.colorCabello.label" default="Color Cabello" />
		
	</label>
	<g:select id="colorCabello" optionValue="descripcion" name="colorCabello.id" from="${com.guendabiaani.domain.setm.ColorCabello.list()}" optionKey="id" value="${personaExtraviadaInstance?.colorCabello?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'colorOjos', 'error')} ">
	<br><label for="colorOjos">
		<g:message code="personaExtraviada.colorOjos.label" default="Color Ojos" />
		
	</label>
	<g:select id="colorOjos" name="colorOjos.id" optionValue="descripcion" from="${com.guendabiaani.domain.setm.ColorOjos.list()}" optionKey="id" value="${personaExtraviadaInstance?.colorOjos?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'vestimenta', 'error')} ">
	<br><label for="vestimenta">
		<g:message code="personaExtraviada.vestimenta.label" default="Vestimenta" />
		
	</label>
	<g:textField name="vestimenta" maxlength="50" value="${personaExtraviadaInstance?.vestimenta}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nacionalidad', 'error')} ">
	<br><label for="nacionalidad">
		<g:message code="personaExtraviada.nacionalidad.label" default="Nacionalidad" />
		
	</label>
	<g:select id="nacionalidad" optionValue="descripcion" name="nacionalidad.id" from="${com.guendabiaani.domain.setm.Nacionalidad.list()}" optionKey="id" value="${personaExtraviadaInstance?.nacionalidad?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilio', 'error')} ">
	<br><label for="domicilio">
		<g:message code="personaExtraviada.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaExtraviadaInstance?.domicilio}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'localidad', 'error')} required">
	<br><label for="localidad">
		<g:message code="personaExtraviada.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" optionValue="descripcion" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.localidad?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'telefono', 'error')} ">
	<br><label for="telefono">
		<g:message code="personaExtraviada.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaExtraviadaInstance?.telefono}"class=" form-control" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'correo', 'error')} ">
	<br><label for="correo">
		<g:message code="personaExtraviada.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaExtraviadaInstance?.correo}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'edoCivil', 'error')} ">
	<br><label for="edoCivil">
		<g:message code="personaExtraviada.edoCivil.label" default="Estado Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" optionValue="descripcion" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaExtraviadaInstance?.edoCivil?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'gustosPreferencias', 'error')} ">
	<br><label for="gustosPreferencias">
		<g:message code="personaExtraviada.gustosPreferencias.label" default="Gustos Preferencias" />
		
	</label>
	<g:textField name="gustosPreferencias" maxlength="100" value="${personaExtraviadaInstance?.gustosPreferencias}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'curp', 'error')} ">
	<br><label for="curp">
		<g:message code="personaExtraviada.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" maxlength="18" value="${personaExtraviadaInstance?.curp}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'cveIfe', 'error')} ">
	<br><label for="cveIfe">
		<g:message code="personaExtraviada.cveIfe.label" default="Clave Ife" />
		
	</label>
	<g:textField name="cveIfe" maxlength="11" value="${personaExtraviadaInstance?.cveIfe}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ultimaFechaVisto', 'error')} required">
	<br><label for="ultimaFechaVisto">
		<g:message code="personaExtraviada.ultimaFechaVisto.label" default="Ultima Fecha Visto" />
		<span class="required-indicator">*</span>
	</label>
	<input class="datepicker form-control" name="ultimaFechaVisto" precision="day"  value="${personaExtraviadaInstance?.ultimaFechaVisto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'maxNivelEstudio', 'error')} required">
	<br><label for="maxNivelEstudio">
		<g:message code="personaExtraviada.maxNivelEstudio.label" default="Máximo Nivel Estudio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="maxNivelEstudio" optionValue="descripcion" name="maxNivelEstudio.id" from="${com.guendabiaani.domain.setm.NivelEstudio.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.maxNivelEstudio?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombreInstitucionEducativo', 'error')} ">
	<br><label for="nombreInstitucionEducativo">
		<g:message code="personaExtraviada.nombreInstitucionEducativo.label" default="Nombre de la Institución Educativa" />
		
	</label>
	<g:textField name="nombreInstitucionEducativo" maxlength="100" value="${personaExtraviadaInstance?.nombreInstitucionEducativo}" class=" form-control"/>
</div>
<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilioInstitucionEducativa', 'error')} ">
	<br><label for="domicilioInstitucionEducativa">
		<g:message code="personaExtraviada.domicilioInstitucionEducativa.label" default="Domicilio de la Institución Educativa" />
		
	</label>
	<g:textField name="domicilioInstitucionEducativa" value="${personaExtraviadaInstance?.domicilioInstitucionEducativa}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ocupacion', 'error')} ">
	<br><label for="ocupacion">
		<g:message code="personaExtraviada.ocupacion.label" default="Ocupación" />
		
	</label>
	<g:select id="ocupacion" optionValue="descripcion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaExtraviadaInstance?.ocupacion?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>



<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombreEmpresa', 'error')} ">
	<br><label for="nombreEmpresa">
		<g:message code="personaExtraviada.nombreEmpresa.label" default="Nombre de la Empresa" />
		
	</label>
	<g:textField name="nombreEmpresa" maxlength="100" value="${personaExtraviadaInstance?.nombreEmpresa}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'telefonoEmpresa', 'error')} ">
	<br><label for="telefonoEmpresa">
		<g:message code="personaExtraviada.telefonoEmpresa.label" default="Teléfono de la Empresa" />
		
	</label>
	<g:textField name="telefonoEmpresa" maxlength="100" value="${personaExtraviadaInstance?.telefonoEmpresa}" class=" form-control"/>
</div>


<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'antiguedad', 'error')} ">
	<br><label for="antiguedad">
		<g:message code="personaExtraviada.antiguedad.label" default="Antigüedad" />
		
	</label>
	<g:field name="antiguedad" type="number" value="${personaExtraviadaInstance?.antiguedad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilioLaboral', 'error')} ">
	<br><label for="domicilioLaboral">
		<g:message code="personaExtraviada.domicilioLaboral.label" default="Domicilio Laboral" />
		
	</label>
	<g:textField name="domicilioLaboral" maxlength="100" value="${personaExtraviadaInstance?.domicilioLaboral}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'enfermedadesDetectadas', 'error')} ">
	<br><label for="enfermedadesDetectadas">
		<g:message code="personaExtraviada.enfermedadesDetectadas.label" default="Enfermedades Detectadas" />
		
	</label>
	<g:textField name="enfermedadesDetectadas" maxlength="100" value="${personaExtraviadaInstance?.enfermedadesDetectadas}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'medicamentosSuministrados', 'error')} ">
	<br><label for="medicamentosSuministrados">
		<g:message code="personaExtraviada.medicamentosSuministrados.label" default="Medicamentos Suministrados" />
		
	</label>
	<g:textField name="medicamentosSuministrados" maxlength="100" value="${personaExtraviadaInstance?.medicamentosSuministrados}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'grupoSanguineo', 'error')} ">
	<br><label for="grupoSanguineo">
		<g:message code="personaExtraviada.grupoSanguineo.label" default="Grupo Sanguíneo" />
		
	</label>
	<g:select id="grupoSanguineo" optionValue="descripcion" name="grupoSanguineo.id" from="${com.guendabiaani.domain.setm.GrupoSanguineo.list()}" optionKey="id" value="${personaExtraviadaInstance?.grupoSanguineo?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'numeroAfiliacionSeguroSocial', 'error')} ">
	<br><label for="numeroAfiliacionSeguroSocial">
		<g:message code="personaExtraviada.numeroAfiliacionSeguroSocial.label" default="Número Afiliación Seguro Social" />
		
	</label>
	<g:textField name="numeroAfiliacionSeguroSocial" maxlength="100" value="${personaExtraviadaInstance?.numeroAfiliacionSeguroSocial}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'transporteUtilizado', 'error')} ">
	<br><label for="transporteUtilizado">
		<g:message code="personaExtraviada.transporteUtilizado.label" default="Transporte Utilizado" />
		
	</label>
	<g:select id="transporteUtilizado" optionValue="descripcion" name="transporteUtilizado.id" from="${com.guendabiaani.domain.setm.Transporte.list()}" optionKey="id" value="${personaExtraviadaInstance?.transporteUtilizado?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'tipoAusencia', 'error')} required">
	<br><label for="tipoAusencia">
		<g:message code="personaExtraviada.tipoAusencia.label" default="Tipo de Ausencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoAusencia" optionValue="descripcion" name="tipoAusencia.id" from="${com.guendabiaani.domain.setm.TipoAusencia.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.tipoAusencia?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'horaAusencia', 'error')} required">
	<br><label for="horaAusencia">
		<g:message code="personaExtraviada.horaAusencia.label" default="Hora de Ausencia" />
		<span class="required-indicator">*</span>
	</label>
	<input class="timepicker form-control" name="horaAusencia" precision="day"  value="${personaExtraviadaInstance?.horaAusencia}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'adicciones', 'error')} ">
	<br><label for="adicciones">
		<g:message code="personaExtraviada.adicciones.label" default="Adicciones" />
		
	</label>
	<g:select id="adicciones" optionValue="descripcion" name="adicciones.id" from="${com.guendabiaani.domain.setm.Adicciones.list()}" optionKey="id" value="${personaExtraviadaInstance?.adicciones?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'parentescoCampania', 'error')} ">
	<br><label for="parentescoCampania">
		<g:message code="personaExtraviada.parentescoCampania.label" default="Parentesco con su Campañia" />
		
	</label>
	<g:textField name="parentescoCampania" maxlength="100" value="${personaExtraviadaInstance?.parentescoCampania}" class="form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ultimoLugarVisto', 'error')} ">
	<br><label for="ultimoLugarVisto">
		<g:message code="personaExtraviada.ultimoLugarVisto.label" default="Ultimo Lugar dónde fué Visto" />
		
	</label>
	<g:textField name="ultimoLugarVisto" maxlength="100" value="${personaExtraviadaInstance?.ultimoLugarVisto}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'conducta', 'error')} ">
	<br><label for="conducta">
		<g:message code="personaExtraviada.conducta.label" default="Conducta" />
		
	</label>
	<g:textField name="conducta" maxlength="100" value="${personaExtraviadaInstance?.conducta}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'descripcionProblemaCausa', 'error')} ">
	<br><label for="descripcionProblemaCausa">
		<g:message code="personaExtraviada.descripcionProblemaCausa.label" default="Descripcion del Problema que pudo Causar su extravio" />
		
	</label>
	<g:textField name="descripcionProblemaCausa" maxlength="100" value="${personaExtraviadaInstance?.descripcionProblemaCausa}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'acompanado', 'error')} ">
	<br><label for="acompanado">
		<g:message code="personaExtraviada.acompanado.label" default="¿Estaba Acompañado?"  />
		
	</label>
	<g:checkBox name="acompanado" value="${personaExtraviadaInstance?.acompanado}" />
</div>
	
	</div>
	</div>
	</form>
    </div>
    </div>
    </div>
    </div>
    </div>
  
    
    
 	<div class="tab-pane" id="tab3">

 	
 <textarea id="txtAddress" class="form-control" rows="5" cols="60"></textarea>
    <br />
    <input type="button" class="btn btn-primary" onclick="Mapas()" value="Poner mapa" />
     <input type="button" class="btn btn-primary" onclick="Getcoord()" value="Coordenadas" />
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <br>

    <div id="mapas-canvas" ></div>


    <script type="text/javascript">
    <!--
        function Mapas() {
            var geocoder = new google.maps.Geocoder();
            var address = document.getElementById("txtAddress").value;
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();

                      var mapOptions = {
                     zoom: 8,
                     center: new google.maps.LatLng(latitude, longitude)
                    };

                    var map = new google.maps.Map(document.getElementById('mapas-canvas'),
                          mapOptions);
                    

                        var marker2 = new google.maps.Marker({
                        position: map.getCenter(),
                         title: 'Aqui esta posicionado actualmente',
                        map: map
                         });

               		$("#mapas-canvas").append("Hola<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>");

                } else {
                    alert("Petición fallida.")
                }
            });
        };

        function Getcoord(){
            var geocoder = new google.maps.Geocoder();
            var address = document.getElementById("txtAddress").value;
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();

                    var locacion=[];
                    locacion.push(latitude);
                    locacion.push(longitude);
                    alert(locacion);
                    return locacion;
                }

                else {
                    alert("Petición fallida.")
                }

        });

    };


        //-->
    </script>





 	</div>


        
        
        
        
        
        
        
        
        
        
        
        
    <div class="tab-pane" id="tab4">
    	
 <div class="row">
<div class="panel panel-default col-lg-10 col-md-10 col-xs-10">
<div class="panel panel-heading"> <h4>Datos de la persona relacionada </h4> </div>
<div class="panel panel-body">
<form role="form">
	<div class="form-group">
	<div clas="row">
	<div class="col-lg-8 col-md-8 col-xs-8">
    
    
<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'nombre', 'error')} ">
	<br><label for="nombre">
		<g:message code="personaRelacionExtraviada.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaRelacionExtraviadaInstance?.nombre}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'apellidoP', 'error')} ">
	<br><label for="apellidoP">
		<g:message code="personaRelacionExtraviada.apellidoP.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoP" maxlength="60" value="${personaRelacionExtraviadaInstance?.apellidoP}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'apellidoM', 'error')} ">
	<br><label for="apellidoM">
		<g:message code="personaRelacionExtraviada.apellidoM.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaRelacionExtraviadaInstance?.apellidoM}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'fechaNac', 'error')} required">
	<br><label for="fechaNac">
		<g:message code="personaRelacionExtraviada.fechaNac.label" default="Fecha de Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<input class="datepicker form-control" name="fechaNac" precision="day"  value="${personaRelacionExtraviadaInstance?.fechaNac}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'edad', 'error')} required">
	<br><label for="edad">
		<g:message code="personaRelacionExtraviada.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad"  from="${1..100}" class="form-control range" required="" value="${fieldValue(bean: personaRelacionExtraviadaInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'sexo', 'error')} required">
	<br><label for="sexo">
		<g:message code="personaRelacionExtraviada.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" optionValue="descripcion" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.sexo?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'parentesco', 'error')} required">
	<br><label for="parentesco">
		<g:message code="personaRelacionExtraviada.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parentesco" optionValue="descripcion" name="parentesco.id" from="${com.guendabiaani.domain.setm.Parentesco.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.parentesco?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'domicilio', 'error')} ">
	<br><label for="domicilio">
		<g:message code="personaRelacionExtraviada.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaRelacionExtraviadaInstance?.domicilio}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'localidad', 'error')} required">
	<br><label for="localidad">
		<g:message code="personaRelacionExtraviada.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" optionValue="descripcion" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.localidad?.id}" class="form-control many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'telefono', 'error')} ">
	<br><label for="telefono">
		<g:message code="personaRelacionExtraviada.telefono.label" default="Teléfono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaRelacionExtraviadaInstance?.telefono}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'correo', 'error')} ">
	<br><label for="correo">
		<g:message code="personaRelacionExtraviada.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaRelacionExtraviadaInstance?.correo}" class=" form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'edoCivil', 'error')} ">
	<br><label for="edoCivil">
		<g:message code="personaRelacionExtraviada.edoCivil.label" default="Estado Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaRelacionExtraviadaInstance?.edoCivil?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'ocupacion', 'error')} ">
	<br><label for="ocupacion">
		<g:message code="personaRelacionExtraviada.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" optionValue="descripcion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaRelacionExtraviadaInstance?.ocupacion?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>
</div>
</div>
</div>
</div>
</form>
</div>
</div>

    </div>

    <div class="tab-pane" id="tab5">
    	<textarea id="txtDes" class="form-control" rows="30" cols="60"></textarea>
    </div>
    <ul class="pager wizard">
    <li class="previous first" style="display:none;"><a href="#">Primero</a></li>
    <li class="previous"><a href="#">Anterior</a></li>
    <li class="next last" style="display:none;"><a href="#">Ultimo</a></li>
    <li class="next"><a href="#">Siguiente</a></li>
    </ul>
    </div>	
    </div>

<script type="text/javascript">

$(function(){

	  $(document).ready(function() {
		    $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
		    var $total = navigation.find('li').length;
		    var $current = index+1;
		    var $percent = ($current/$total) * 100;
		    $('#rootwizard').find('.bar').css({width:$percent+'%'});
		    }});
    });


});

$('.timepicker').pickatime({
    clear: ''
});

$('.datepicker').pickadate();
</script>
