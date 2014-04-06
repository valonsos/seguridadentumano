
<%@ page import="com.guendabiaani.domain.setm.Denuncia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'denuncia.label', default: 'Denuncia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-denuncia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-denuncia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list denuncia">
			
				<g:if test="${denunciaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="denuncia.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${denunciaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${denunciaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="denuncia.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:formatDate date="${denunciaInstance?.hora}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${denunciaInstance?.personaDenunciante}">
				<li class="fieldcontain">
					<span id="personaDenunciante-label" class="property-label"><g:message code="denuncia.personaDenunciante.label" default="Persona Denunciante" /></span>
					
						<span class="property-value" aria-labelledby="personaDenunciante-label"><g:link controller="personaDenunciante" action="show" id="${denunciaInstance?.personaDenunciante?.id}">${denunciaInstance?.personaDenunciante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${denunciaInstance?.personaExtraviada}">
				<li class="fieldcontain">
					<span id="personaExtraviada-label" class="property-label"><g:message code="denuncia.personaExtraviada.label" default="Persona Extraviada" /></span>
					
						<span class="property-value" aria-labelledby="personaExtraviada-label"><g:link controller="personaExtraviada" action="show" id="${denunciaInstance?.personaExtraviada?.id}">${denunciaInstance?.personaExtraviada?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${denunciaInstance?.delito}">
				<li class="fieldcontain">
					<span id="delito-label" class="property-label"><g:message code="denuncia.delito.label" default="Delito" /></span>
					
						<span class="property-value" aria-labelledby="delito-label"><g:link controller="catologoDelitos" action="show" id="${denunciaInstance?.delito?.id}">${denunciaInstance?.delito?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${denunciaInstance?.tipoDenuncia}">
				<li class="fieldcontain">
					<span id="tipoDenuncia-label" class="property-label"><g:message code="denuncia.tipoDenuncia.label" default="Tipo Denuncia" /></span>
					
						<span class="property-value" aria-labelledby="tipoDenuncia-label"><g:link controller="tipoDenuncia" action="show" id="${denunciaInstance?.tipoDenuncia?.id}">${denunciaInstance?.tipoDenuncia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${denunciaInstance?.id}" />
					<g:link class="edit" action="edit" id="${denunciaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
