<%@ page import="com.guendabiaani.domain.setm.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="estado.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${estadoInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'coordenadas', 'error')} ">
	<label for="coordenadas">
		<g:message code="estado.coordenadas.label" default="Coordenadas" />
		
	</label>
	<g:select name="coordenadas" from="${com.guendabiaani.domain.setm.Coordenada.list()}" multiple="multiple" optionKey="id" size="5" value="${estadoInstance?.coordenadas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="estado.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${estadoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'prefijo', 'error')} ">
	<label for="prefijo">
		<g:message code="estado.prefijo.label" default="Prefijo" />
		
	</label>
	<g:textField name="prefijo" value="${estadoInstance?.prefijo}"/>
</div>

