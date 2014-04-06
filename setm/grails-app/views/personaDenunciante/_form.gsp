<%@ page import="com.guendabiaani.domain.setm.PersonaDenunciante" %>



<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="personaDenunciante.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="60" value="${personaDenuncianteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'apellidoP', 'error')} ">
	<label for="apellidoP">
		<g:message code="personaDenunciante.apellidoP.label" default="Apellido P" />
		
	</label>
	<g:textField name="apellidoP" maxlength="60" value="${personaDenuncianteInstance?.apellidoP}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'apellidoM', 'error')} ">
	<label for="apellidoM">
		<g:message code="personaDenunciante.apellidoM.label" default="Apellido M" />
		
	</label>
	<g:textField name="apellidoM" maxlength="60" value="${personaDenuncianteInstance?.apellidoM}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="personaDenunciante.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="edad" from="${1..100}" class="range" required="" value="${fieldValue(bean: personaDenuncianteInstance, field: 'edad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="personaDenunciante.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sexo" name="sexo.id" from="${com.guendabiaani.domain.setm.Sexo.list()}" optionKey="id" required="" value="${personaDenuncianteInstance?.sexo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'parentesco', 'error')} required">
	<label for="parentesco">
		<g:message code="personaDenunciante.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parentesco" name="parentesco.id" from="${com.guendabiaani.domain.setm.Parentesco.list()}" optionKey="id" required="" value="${personaDenuncianteInstance?.parentesco?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="personaDenunciante.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" maxlength="100" value="${personaDenuncianteInstance?.domicilio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="personaDenunciante.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${personaDenuncianteInstance?.localidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="personaDenunciante.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="10" value="${personaDenuncianteInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="personaDenunciante.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="50" value="${personaDenuncianteInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'edoCivil', 'error')} ">
	<label for="edoCivil">
		<g:message code="personaDenunciante.edoCivil.label" default="Edo Civil" />
		
	</label>
	<g:select id="edoCivil" name="edoCivil.id" from="${com.guendabiaani.domain.setm.EstadoCivil.list()}" optionKey="id" value="${personaDenuncianteInstance?.edoCivil?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="personaDenunciante.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" name="ocupacion.id" from="${com.guendabiaani.domain.setm.Ocupacion.list()}" optionKey="id" value="${personaDenuncianteInstance?.ocupacion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'domicilioLaboral', 'error')} ">
	<label for="domicilioLaboral">
		<g:message code="personaDenunciante.domicilioLaboral.label" default="Domicilio Laboral" />
		
	</label>
	<g:textField name="domicilioLaboral" maxlength="100" value="${personaDenuncianteInstance?.domicilioLaboral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaDenuncianteInstance, field: 'telefonoLaboral', 'error')} ">
	<label for="telefonoLaboral">
		<g:message code="personaDenunciante.telefonoLaboral.label" default="Telefono Laboral" />
		
	</label>
	<g:textField name="telefonoLaboral" maxlength="10" value="${personaDenuncianteInstance?.telefonoLaboral}"/>
</div>

