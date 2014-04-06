<%@ page import="com.guendabiaani.domain.setm.Coordenada" %>



<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'altitud', 'error')} ">
	<label for="altitud">
		<g:message code="coordenada.altitud.label" default="Altitud" />
		
	</label>
	<g:textField name="altitud" value="${coordenadaInstance?.altitud}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'latitud', 'error')} ">
	<label for="latitud">
		<g:message code="coordenada.latitud.label" default="Latitud" />
		
	</label>
	<g:textField name="latitud" value="${coordenadaInstance?.latitud}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'longitud', 'error')} ">
	<label for="longitud">
		<g:message code="coordenada.longitud.label" default="Longitud" />
		
	</label>
	<g:textField name="longitud" value="${coordenadaInstance?.longitud}"/>
</div>

