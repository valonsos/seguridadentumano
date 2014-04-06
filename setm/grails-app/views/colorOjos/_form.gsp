<%@ page import="com.guendabiaani.domain.setm.ColorOjos" %>



<div class="fieldcontain ${hasErrors(bean: colorOjosInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="colorOjos.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${colorOjosInstance?.descripcion}"/>
</div>

