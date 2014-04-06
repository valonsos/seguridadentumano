<%@ page import="com.guendabiaani.domain.setm.Municipio" %>



<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'region', 'error')} ">
	<label for="region">
		<g:message code="municipio.region.label" default="Region" />
		
	</label>
	<g:select id="region" name="region.id" from="${com.guendabiaani.domain.setm.Region.list()}" optionKey="id" value="${municipioInstance?.region?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="municipio.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${municipioInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'coordenadas', 'error')} ">
	<label for="coordenadas">
		<g:message code="municipio.coordenadas.label" default="Coordenadas" />
		
	</label>
	<g:select name="coordenadas" from="${com.guendabiaani.domain.setm.Coordenada.list()}" multiple="multiple" optionKey="id" size="5" value="${municipioInstance?.coordenadas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="municipio.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${municipioInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'distrito', 'error')} required">
	<label for="distrito">
		<g:message code="municipio.distrito.label" default="Distrito" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="distrito" name="distrito.id" from="${com.guendabiaani.domain.setm.Distrito.list()}" optionKey="id" required="" value="${municipioInstance?.distrito?.id}" class="many-to-one"/>
</div>

