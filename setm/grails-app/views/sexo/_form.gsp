<%@ page import="com.guendabiaani.domain.setm.Sexo" %>



<div class="fieldcontain ${hasErrors(bean: sexoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="sexo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${sexoInstance?.descripcion}"/>
</div>

