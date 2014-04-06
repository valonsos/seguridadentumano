<%@ page import="com.guendabiaani.domain.setm.DelicuenciaOrganizada" %>



<div class="fieldcontain ${hasErrors(bean: delicuenciaOrganizadaInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="delicuenciaOrganizada.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="localidad" name="localidad.id" from="${com.guendabiaani.domain.setm.Localidad.list()}" optionKey="id" required="" value="${delicuenciaOrganizadaInstance?.localidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: delicuenciaOrganizadaInstance, field: 'referenciaUbicacion', 'error')} ">
	<label for="referenciaUbicacion">
		<g:message code="delicuenciaOrganizada.referenciaUbicacion.label" default="Referencia Ubicacion" />
		
	</label>
	<g:textField name="referenciaUbicacion" value="${delicuenciaOrganizadaInstance?.referenciaUbicacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: delicuenciaOrganizadaInstance, field: 'idDenuncia', 'error')} required">
	<label for="idDenuncia">
		<g:message code="delicuenciaOrganizada.idDenuncia.label" default="Id Denuncia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idDenuncia" name="idDenuncia.id" from="${com.guendabiaani.domain.setm.Denuncia.list()}" optionKey="id" required="" value="${delicuenciaOrganizadaInstance?.idDenuncia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: delicuenciaOrganizadaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="delicuenciaOrganizada.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${delicuenciaOrganizadaInstance?.descripcion}"/>
</div>

