<%@ page import="com.guendabiaani.domain.setm.Ocupacion" %>



<div class="fieldcontain ${hasErrors(bean: ocupacionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="ocupacion.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${ocupacionInstance?.descripcion}"/>
</div>

