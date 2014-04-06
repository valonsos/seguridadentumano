<%@ page import="com.guendabiaani.domain.setm.ColorCabello" %>



<div class="fieldcontain ${hasErrors(bean: colorCabelloInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="colorCabello.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${colorCabelloInstance?.descripcion}"/>
</div>

