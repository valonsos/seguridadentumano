
<%@ page import="com.guendabiaani.domain.setm.AsaltoCamiones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-asaltoCamiones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-asaltoCamiones" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list asaltoCamiones">
			
				<g:if test="${asaltoCamionesInstance?.numeroCamion}">
				<li class="fieldcontain">
					<span id="numeroCamion-label" class="property-label"><g:message code="asaltoCamiones.numeroCamion.label" default="Numero Camion" /></span>
					
						<span class="property-value" aria-labelledby="numeroCamion-label"><g:fieldValue bean="${asaltoCamionesInstance}" field="numeroCamion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.ruta}">
				<li class="fieldcontain">
					<span id="ruta-label" class="property-label"><g:message code="asaltoCamiones.ruta.label" default="Ruta" /></span>
					
						<span class="property-value" aria-labelledby="ruta-label"><g:link controller="ruta" action="show" id="${asaltoCamionesInstance?.ruta?.id}">${asaltoCamionesInstance?.ruta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.horaAsalto}">
				<li class="fieldcontain">
					<span id="horaAsalto-label" class="property-label"><g:message code="asaltoCamiones.horaAsalto.label" default="Hora Asalto" /></span>
					
						<span class="property-value" aria-labelledby="horaAsalto-label"><g:formatDate date="${asaltoCamionesInstance?.horaAsalto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.fechaAsalto}">
				<li class="fieldcontain">
					<span id="fechaAsalto-label" class="property-label"><g:message code="asaltoCamiones.fechaAsalto.label" default="Fecha Asalto" /></span>
					
						<span class="property-value" aria-labelledby="fechaAsalto-label"><g:formatDate date="${asaltoCamionesInstance?.fechaAsalto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.lugar}">
				<li class="fieldcontain">
					<span id="lugar-label" class="property-label"><g:message code="asaltoCamiones.lugar.label" default="Lugar" /></span>
					
						<span class="property-value" aria-labelledby="lugar-label"><g:fieldValue bean="${asaltoCamionesInstance}" field="lugar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="asaltoCamiones.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${asaltoCamionesInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.idDenuncia}">
				<li class="fieldcontain">
					<span id="idDenuncia-label" class="property-label"><g:message code="asaltoCamiones.idDenuncia.label" default="Id Denuncia" /></span>
					
						<span class="property-value" aria-labelledby="idDenuncia-label"><g:link controller="denuncia" action="show" id="${asaltoCamionesInstance?.idDenuncia?.id}">${asaltoCamionesInstance?.idDenuncia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${asaltoCamionesInstance?.conpania}">
				<li class="fieldcontain">
					<span id="conpania-label" class="property-label"><g:message code="asaltoCamiones.conpania.label" default="Conpania" /></span>
					
						<span class="property-value" aria-labelledby="conpania-label"><g:link controller="compania" action="show" id="${asaltoCamionesInstance?.conpania?.id}">${asaltoCamionesInstance?.conpania?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${asaltoCamionesInstance?.id}" />
					<g:link class="edit" action="edit" id="${asaltoCamionesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
