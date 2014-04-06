<%@ page import="com.guendabiaani.domain.setm.Compania" %>



<div class="fieldcontain ${hasErrors(bean: companiaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="compania.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${companiaInstance?.descripcion}"/>
</div>

