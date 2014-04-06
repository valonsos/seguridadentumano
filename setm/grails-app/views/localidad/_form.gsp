<%@ page import="com.guendabiaani.domain.setm.Localidad" %>



<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="localidad.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${localidadInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'coordenadas', 'error')} ">
	<label for="coordenadas">
		<g:message code="localidad.coordenadas.label" default="Coordenadas" />
		
	</label>
	<g:select name="coordenadas" from="${com.guendabiaani.domain.setm.Coordenada.list()}" multiple="multiple" optionKey="id" size="5" value="${localidadInstance?.coordenadas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="localidad.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${localidadInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="localidad.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${com.guendabiaani.domain.setm.Municipio.list()}" optionKey="id" required="" value="${localidadInstance?.municipio?.id}" class="many-to-one"/>
</div>

