<%@ page import="com.guendabiaani.domain.setm.Transporte" %>



<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="transporte.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${transporteInstance?.descripcion}"/>
</div>

