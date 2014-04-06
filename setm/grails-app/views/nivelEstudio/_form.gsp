<%@ page import="com.guendabiaani.domain.setm.NivelEstudio" %>



<div class="fieldcontain ${hasErrors(bean: nivelEstudioInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="nivelEstudio.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${nivelEstudioInstance?.descripcion}"/>
</div>

