<%@ page import="com.guendabiaani.domain.setm.TipoCabello" %>



<div class="fieldcontain ${hasErrors(bean: tipoCabelloInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoCabello.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoCabelloInstance?.descripcion}"/>
</div>

