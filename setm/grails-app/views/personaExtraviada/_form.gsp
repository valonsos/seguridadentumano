<%@ page import="com.guendabiaani.domain.setm.PersonaExtraviada" %>



<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="personaExtraviada.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaExtraviadaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'apellidoP', 'error')} ">
	<label for="apellidoP">
		<g:message code="personaExtraviada.apellidoP.label" default="Apellido P" />
		
	</label>
	<g:textField name="apellidoP" maxlength="60" value="${personaExtraviadaInstance?.apellidoP}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'apellidoM', 'error')} ">
	<label for="apellidoM">
		<g:message code="personaExtraviada.apellidoM.label" default="Apellido M" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaExtraviadaInstance?.apellidoM}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'fechaNac', 'error')} required">
	<label for="fechaNac">
		<g:message code="personaExtraviada.fechaNac.label" default="Fecha Nac" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNac" precision="day"  value="${personaExtraviadaInstance?.fechaNac}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'alias', 'error')} ">
	<label for="alias">
		<g:message code="personaExtraviada.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" maxlength="60" value="${personaExtraviadaInstance?.alias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="personaExtraviada.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad" from="${1..100}" class="range" required="" value="${fieldValue(bean: personaExtraviadaInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="personaExtraviada.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.sexo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'estatura', 'error')} required">
	<label for="estatura">
		<g:message code="personaExtraviada.estatura.label" default="Estatura" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estatura" from="${0..3}" class="range" required="" value="${fieldValue(bean: personaExtraviadaInstance, field: 'estatura')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'complexion', 'error')} ">
	<label for="complexion">
		<g:message code="personaExtraviada.complexion.label" default="Complexion" />
		
	</label>
	<g:textField name="complexion" maxlength="50" value="${personaExtraviadaInstance?.complexion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'tipoCabello', 'error')} ">
	<label for="tipoCabello">
		<g:message code="personaExtraviada.tipoCabello.label" default="Tipo Cabello" />
		
	</label>
	<g:select id="tipoCabello" name="tipoCabello.id" from="${com.guendabiaani.domain.setm.TipoCabello.list()}" optionKey="id" value="${personaExtraviadaInstance?.tipoCabello?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'colorCabello', 'error')} ">
	<label for="colorCabello">
		<g:message code="personaExtraviada.colorCabello.label" default="Color Cabello" />
		
	</label>
	<g:select id="colorCabello" name="colorCabello.id" from="${com.guendabiaani.domain.setm.ColorCabello.list()}" optionKey="id" value="${personaExtraviadaInstance?.colorCabello?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'colorOjos', 'error')} ">
	<label for="colorOjos">
		<g:message code="personaExtraviada.colorOjos.label" default="Color Ojos" />
		
	</label>
	<g:select id="colorOjos" name="colorOjos.id" from="${com.guendabiaani.domain.setm.ColorOjos.list()}" optionKey="id" value="${personaExtraviadaInstance?.colorOjos?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'vestimenta', 'error')} ">
	<label for="vestimenta">
		<g:message code="personaExtraviada.vestimenta.label" default="Vestimenta" />
		
	</label>
	<g:textField name="vestimenta" maxlength="50" value="${personaExtraviadaInstance?.vestimenta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nacionalidad', 'error')} ">
	<label for="nacionalidad">
		<g:message code="personaExtraviada.nacionalidad.label" default="Nacionalidad" />
		
	</label>
	<g:select id="nacionalidad" name="nacionalidad.id" from="${com.guendabiaani.domain.setm.Nacionalidad.list()}" optionKey="id" value="${personaExtraviadaInstance?.nacionalidad?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="personaExtraviada.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaExtraviadaInstance?.domicilio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="personaExtraviada.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.localidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="personaExtraviada.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaExtraviadaInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="personaExtraviada.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaExtraviadaInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'edoCivil', 'error')} ">
	<label for="edoCivil">
		<g:message code="personaExtraviada.edoCivil.label" default="Edo Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaExtraviadaInstance?.edoCivil?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'gustosPreferencias', 'error')} ">
	<label for="gustosPreferencias">
		<g:message code="personaExtraviada.gustosPreferencias.label" default="Gustos Preferencias" />
		
	</label>
	<g:textField name="gustosPreferencias" maxlength="100" value="${personaExtraviadaInstance?.gustosPreferencias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="personaExtraviada.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" maxlength="18" value="${personaExtraviadaInstance?.curp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'cveIfe', 'error')} ">
	<label for="cveIfe">
		<g:message code="personaExtraviada.cveIfe.label" default="Cve Ife" />
		
	</label>
	<g:textField name="cveIfe" maxlength="11" value="${personaExtraviadaInstance?.cveIfe}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ultimaFechaVisto', 'error')} required">
	<label for="ultimaFechaVisto">
		<g:message code="personaExtraviada.ultimaFechaVisto.label" default="Ultima Fecha Visto" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ultimaFechaVisto" precision="day"  value="${personaExtraviadaInstance?.ultimaFechaVisto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'maxNivelEstudio', 'error')} required">
	<label for="maxNivelEstudio">
		<g:message code="personaExtraviada.maxNivelEstudio.label" default="Max Nivel Estudio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="maxNivelEstudio" name="maxNivelEstudio.id" from="${com.guendabiaani.domain.setm.NivelEstudio.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.maxNivelEstudio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombreInstitucionEducativo', 'error')} ">
	<label for="nombreInstitucionEducativo">
		<g:message code="personaExtraviada.nombreInstitucionEducativo.label" default="Nombre Institucion Educativo" />
		
	</label>
	<g:textField name="nombreInstitucionEducativo" maxlength="100" value="${personaExtraviadaInstance?.nombreInstitucionEducativo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="personaExtraviada.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaExtraviadaInstance?.ocupacion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'nombreEmpresa', 'error')} ">
	<label for="nombreEmpresa">
		<g:message code="personaExtraviada.nombreEmpresa.label" default="Nombre Empresa" />
		
	</label>
	<g:textField name="nombreEmpresa" maxlength="100" value="${personaExtraviadaInstance?.nombreEmpresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'telefonoEmpresa', 'error')} ">
	<label for="telefonoEmpresa">
		<g:message code="personaExtraviada.telefonoEmpresa.label" default="Telefono Empresa" />
		
	</label>
	<g:textField name="telefonoEmpresa" maxlength="100" value="${personaExtraviadaInstance?.telefonoEmpresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'antiguedad', 'error')} ">
	<label for="antiguedad">
		<g:message code="personaExtraviada.antiguedad.label" default="Antiguedad" />
		
	</label>
	<g:field name="antiguedad" type="number" value="${personaExtraviadaInstance.antiguedad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilioLaboral', 'error')} ">
	<label for="domicilioLaboral">
		<g:message code="personaExtraviada.domicilioLaboral.label" default="Domicilio Laboral" />
		
	</label>
	<g:textField name="domicilioLaboral" maxlength="100" value="${personaExtraviadaInstance?.domicilioLaboral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'enfermedadesDetectadas', 'error')} ">
	<label for="enfermedadesDetectadas">
		<g:message code="personaExtraviada.enfermedadesDetectadas.label" default="Enfermedades Detectadas" />
		
	</label>
	<g:textField name="enfermedadesDetectadas" maxlength="100" value="${personaExtraviadaInstance?.enfermedadesDetectadas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'medicamentosSuministrados', 'error')} ">
	<label for="medicamentosSuministrados">
		<g:message code="personaExtraviada.medicamentosSuministrados.label" default="Medicamentos Suministrados" />
		
	</label>
	<g:textField name="medicamentosSuministrados" maxlength="100" value="${personaExtraviadaInstance?.medicamentosSuministrados}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'grupoSanguineo', 'error')} ">
	<label for="grupoSanguineo">
		<g:message code="personaExtraviada.grupoSanguineo.label" default="Grupo Sanguineo" />
		
	</label>
	<g:select id="grupoSanguineo" name="grupoSanguineo.id" from="${com.guendabiaani.domain.setm.GrupoSanguineo.list()}" optionKey="id" value="${personaExtraviadaInstance?.grupoSanguineo?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'numeroAfiliacionSeguroSocial', 'error')} ">
	<label for="numeroAfiliacionSeguroSocial">
		<g:message code="personaExtraviada.numeroAfiliacionSeguroSocial.label" default="Numero Afiliacion Seguro Social" />
		
	</label>
	<g:textField name="numeroAfiliacionSeguroSocial" maxlength="100" value="${personaExtraviadaInstance?.numeroAfiliacionSeguroSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'transporteUtilizado', 'error')} ">
	<label for="transporteUtilizado">
		<g:message code="personaExtraviada.transporteUtilizado.label" default="Transporte Utilizado" />
		
	</label>
	<g:select id="transporteUtilizado" name="transporteUtilizado.id" from="${com.guendabiaani.domain.setm.Transporte.list()}" optionKey="id" value="${personaExtraviadaInstance?.transporteUtilizado?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'tipoAusencia', 'error')} required">
	<label for="tipoAusencia">
		<g:message code="personaExtraviada.tipoAusencia.label" default="Tipo Ausencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoAusencia" name="tipoAusencia.id" from="${com.guendabiaani.domain.setm.TipoAusencia.list()}" optionKey="id" required="" value="${personaExtraviadaInstance?.tipoAusencia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'horaAusencia', 'error')} required">
	<label for="horaAusencia">
		<g:message code="personaExtraviada.horaAusencia.label" default="Hora Ausencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaAusencia" precision="day"  value="${personaExtraviadaInstance?.horaAusencia}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'adicciones', 'error')} ">
	<label for="adicciones">
		<g:message code="personaExtraviada.adicciones.label" default="Adicciones" />
		
	</label>
	<g:select id="adicciones" name="adicciones.id" from="${com.guendabiaani.domain.setm.Adicciones.list()}" optionKey="id" value="${personaExtraviadaInstance?.adicciones?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'parentescoCampania', 'error')} ">
	<label for="parentescoCampania">
		<g:message code="personaExtraviada.parentescoCampania.label" default="Parentesco Campania" />
		
	</label>
	<g:textField name="parentescoCampania" maxlength="100" value="${personaExtraviadaInstance?.parentescoCampania}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'ultimoLugarVisto', 'error')} ">
	<label for="ultimoLugarVisto">
		<g:message code="personaExtraviada.ultimoLugarVisto.label" default="Ultimo Lugar Visto" />
		
	</label>
	<g:textField name="ultimoLugarVisto" maxlength="100" value="${personaExtraviadaInstance?.ultimoLugarVisto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'conducta', 'error')} ">
	<label for="conducta">
		<g:message code="personaExtraviada.conducta.label" default="Conducta" />
		
	</label>
	<g:textField name="conducta" maxlength="100" value="${personaExtraviadaInstance?.conducta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'descripcionProblemaCausa', 'error')} ">
	<label for="descripcionProblemaCausa">
		<g:message code="personaExtraviada.descripcionProblemaCausa.label" default="Descripcion Problema Causa" />
		
	</label>
	<g:textField name="descripcionProblemaCausa" maxlength="100" value="${personaExtraviadaInstance?.descripcionProblemaCausa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'latitud', 'error')} required">
	<label for="latitud">
		<g:message code="personaExtraviada.latitud.label" default="Latitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitud" type="number" value="${personaExtraviadaInstance.latitud}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="personaExtraviada.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitud" type="number" value="${personaExtraviadaInstance.longitud}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'acompanado', 'error')} ">
	<label for="acompanado">
		<g:message code="personaExtraviada.acompanado.label" default="Acompanado" />
		
	</label>
	<g:checkBox name="acompanado" value="${personaExtraviadaInstance?.acompanado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaExtraviadaInstance, field: 'domicilioInstitucionEducativa', 'error')} ">
	<label for="domicilioInstitucionEducativa">
		<g:message code="personaExtraviada.domicilioInstitucionEducativa.label" default="Domicilio Institucion Educativa" />
		
	</label>
	<g:textField name="domicilioInstitucionEducativa" value="${personaExtraviadaInstance?.domicilioInstitucionEducativa}"/>
</div>

