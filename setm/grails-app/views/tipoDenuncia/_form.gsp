<%@ page import="com.guendabiaani.domain.setm.TipoDenuncia" %>



<div class="fieldcontain ${hasErrors(bean: tipoDenunciaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoDenuncia.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoDenunciaInstance?.descripcion}"/>
</div>

