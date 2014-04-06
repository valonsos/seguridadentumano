<%@ page import="com.guendabiaani.domain.setm.Region" %>



<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="region.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${regionInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'coordenadas', 'error')} ">
	<label for="coordenadas">
		<g:message code="region.coordenadas.label" default="Coordenadas" />
		
	</label>
	<g:select name="coordenadas" from="${com.guendabiaani.domain.setm.Coordenada.list()}" multiple="multiple" optionKey="id" size="5" value="${regionInstance?.coordenadas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="region.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${regionInstance?.descripcion}"/>
</div>

