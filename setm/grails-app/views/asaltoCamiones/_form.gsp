<%@ page import="com.guendabiaani.domain.setm.AsaltoCamiones" %>



<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'numeroCamion', 'error')} ">
	<label for="numeroCamion">
		<g:message code="asaltoCamiones.numeroCamion.label" default="Numero Camion" />
		
	</label>
	<g:textField name="numeroCamion" value="${asaltoCamionesInstance?.numeroCamion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'ruta', 'error')} required">
	<label for="ruta">
		<g:message code="asaltoCamiones.ruta.label" default="Ruta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ruta" name="ruta.id" from="${com.guendabiaani.domain.setm.Ruta.list()}" optionKey="id" required="" value="${asaltoCamionesInstance?.ruta?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'horaAsalto', 'error')} required">
	<label for="horaAsalto">
		<g:message code="asaltoCamiones.horaAsalto.label" default="Hora Asalto" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaAsalto" precision="day"  value="${asaltoCamionesInstance?.horaAsalto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'fechaAsalto', 'error')} required">
	<label for="fechaAsalto">
		<g:message code="asaltoCamiones.fechaAsalto.label" default="Fecha Asalto" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAsalto" precision="day"  value="${asaltoCamionesInstance?.fechaAsalto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'lugar', 'error')} ">
	<label for="lugar">
		<g:message code="asaltoCamiones.lugar.label" default="Lugar" />
		
	</label>
	<g:textField name="lugar" value="${asaltoCamionesInstance?.lugar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="asaltoCamiones.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${asaltoCamionesInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'idDenuncia', 'error')} required">
	<label for="idDenuncia">
		<g:message code="asaltoCamiones.idDenuncia.label" default="Id Denuncia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idDenuncia" name="idDenuncia.id" from="${com.guendabiaani.domain.setm.Denuncia.list()}" optionKey="id" required="" value="${asaltoCamionesInstance?.idDenuncia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: asaltoCamionesInstance, field: 'conpania', 'error')} required">
	<label for="conpania">
		<g:message code="asaltoCamiones.conpania.label" default="Conpania" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conpania" name="conpania.id" from="${com.guendabiaani.domain.setm.Compania.list()}" optionKey="id" required="" value="${asaltoCamionesInstance?.conpania?.id}" class="many-to-one"/>
</div>

