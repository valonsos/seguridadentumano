<%@ page import="com.guendabiaani.domain.setm.Parentesco" %>



<div class="fieldcontain ${hasErrors(bean: parentescoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="parentesco.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${parentescoInstance?.descripcion}"/>
</div>

