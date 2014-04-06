<%@ page import="com.guendabiaani.domain.setm.Nacionalidad" %>



<div class="fieldcontain ${hasErrors(bean: nacionalidadInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="nacionalidad.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${nacionalidadInstance?.descripcion}"/>
</div>

