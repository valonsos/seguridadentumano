<%@ page import="com.guendabiaani.domain.setm.Ruta" %>



<div class="fieldcontain ${hasErrors(bean: rutaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="ruta.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${rutaInstance?.descripcion}"/>
</div>

