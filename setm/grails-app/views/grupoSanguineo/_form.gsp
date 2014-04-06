<%@ page import="com.guendabiaani.domain.setm.GrupoSanguineo" %>



<div class="fieldcontain ${hasErrors(bean: grupoSanguineoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="grupoSanguineo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${grupoSanguineoInstance?.descripcion}"/>
</div>

