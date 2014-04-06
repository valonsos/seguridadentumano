
<%@ page import="com.guendabiaani.domain.setm.DelicuenciaOrganizada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-delicuenciaOrganizada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-delicuenciaOrganizada" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list delicuenciaOrganizada">
			
				<g:if test="${delicuenciaOrganizadaInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="delicuenciaOrganizada.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:link controller="localidad" action="show" id="${delicuenciaOrganizadaInstance?.localidad?.id}">${delicuenciaOrganizadaInstance?.localidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${delicuenciaOrganizadaInstance?.referenciaUbicacion}">
				<li class="fieldcontain">
					<span id="referenciaUbicacion-label" class="property-label"><g:message code="delicuenciaOrganizada.referenciaUbicacion.label" default="Referencia Ubicacion" /></span>
					
						<span class="property-value" aria-labelledby="referenciaUbicacion-label"><g:fieldValue bean="${delicuenciaOrganizadaInstance}" field="referenciaUbicacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${delicuenciaOrganizadaInstance?.idDenuncia}">
				<li class="fieldcontain">
					<span id="idDenuncia-label" class="property-label"><g:message code="delicuenciaOrganizada.idDenuncia.label" default="Id Denuncia" /></span>
					
						<span class="property-value" aria-labelledby="idDenuncia-label"><g:link controller="denuncia" action="show" id="${delicuenciaOrganizadaInstance?.idDenuncia?.id}">${delicuenciaOrganizadaInstance?.idDenuncia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${delicuenciaOrganizadaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="delicuenciaOrganizada.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${delicuenciaOrganizadaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${delicuenciaOrganizadaInstance?.id}" />
					<g:link class="edit" action="edit" id="${delicuenciaOrganizadaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
