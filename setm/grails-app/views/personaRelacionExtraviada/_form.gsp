<%@ page import="com.guendabiaani.domain.setm.PersonaRelacionExtraviada" %>



<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="personaRelacionExtraviada.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaRelacionExtraviadaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'apellidoP', 'error')} ">
	<label for="apellidoP">
		<g:message code="personaRelacionExtraviada.apellidoP.label" default="Apellido P" />
		
	</label>
	<g:textField name="apellidoP" maxlength="60" value="${personaRelacionExtraviadaInstance?.apellidoP}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'apellidoM', 'error')} ">
	<label for="apellidoM">
		<g:message code="personaRelacionExtraviada.apellidoM.label" default="Apellido M" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaRelacionExtraviadaInstance?.apellidoM}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'fechaNac', 'error')} required">
	<label for="fechaNac">
		<g:message code="personaRelacionExtraviada.fechaNac.label" default="Fecha Nac" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNac" precision="day"  value="${personaRelacionExtraviadaInstance?.fechaNac}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="personaRelacionExtraviada.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad" from="${1..100}" class="range" required="" value="${fieldValue(bean: personaRelacionExtraviadaInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="personaRelacionExtraviada.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.sexo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'parentesco', 'error')} required">
	<label for="parentesco">
		<g:message code="personaRelacionExtraviada.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parentesco" name="parentesco.id" from="${com.guendabiaani.domain.setm.Parentesco.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.parentesco?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="personaRelacionExtraviada.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaRelacionExtraviadaInstance?.domicilio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="personaRelacionExtraviada.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.localidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="personaRelacionExtraviada.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaRelacionExtraviadaInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="personaRelacionExtraviada.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaRelacionExtraviadaInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'edoCivil', 'error')} ">
	<label for="edoCivil">
		<g:message code="personaRelacionExtraviada.edoCivil.label" default="Edo Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaRelacionExtraviadaInstance?.edoCivil?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="personaRelacionExtraviada.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaRelacionExtraviadaInstance?.ocupacion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaRelacionExtraviadaInstance, field: 'personaExtraviada', 'error')} required">
	<label for="personaExtraviada">
		<g:message code="personaRelacionExtraviada.personaExtraviada.label" default="Persona Extraviada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="personaExtraviada" name="personaExtraviada.id" from="${com.guendabiaani.domain.setm.PersonaExtraviada.list()}" optionKey="id" required="" value="${personaRelacionExtraviadaInstance?.personaExtraviada?.id}" class="many-to-one"/>
</div>

