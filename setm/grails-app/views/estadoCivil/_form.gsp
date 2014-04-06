<%@ page import="com.guendabiaani.domain.setm.EstadoCivil" %>



<div class="fieldcontain ${hasErrors(bean: estadoCivilInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="estadoCivil.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${estadoCivilInstance?.descripcion}"/>
</div>

