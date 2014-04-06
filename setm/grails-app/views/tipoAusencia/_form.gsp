<%@ page import="com.guendabiaani.domain.setm.TipoAusencia" %>



<div class="fieldcontain ${hasErrors(bean: tipoAusenciaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoAusencia.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoAusenciaInstance?.descripcion}"/>
</div>

