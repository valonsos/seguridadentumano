<%@ page import="com.guendabiaani.domain.setm.CatologoDelitos" %>



<div class="fieldcontain ${hasErrors(bean: catologoDelitosInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="catologoDelitos.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${catologoDelitosInstance?.descripcion}"/>
</div>

