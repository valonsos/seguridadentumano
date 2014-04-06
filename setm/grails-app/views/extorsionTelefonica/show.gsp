
<%@ page import="com.guendabiaani.domain.setm.ExtorsionTelefonica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-extorsionTelefonica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-extorsionTelefonica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list extorsionTelefonica">
			
				<g:if test="${extorsionTelefonicaInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="extorsionTelefonica.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${extorsionTelefonicaInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${extorsionTelefonicaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="extorsionTelefonica.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:formatDate date="${extorsionTelefonicaInstance?.hora}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${extorsionTelefonicaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="extorsionTelefonica.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${extorsionTelefonicaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${extorsionTelefonicaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="extorsionTelefonica.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${extorsionTelefonicaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${extorsionTelefonicaInstance?.idDenuncia}">
				<li class="fieldcontain">
					<span id="idDenuncia-label" class="property-label"><g:message code="extorsionTelefonica.idDenuncia.label" default="Id Denuncia" /></span>
					
						<span class="property-value" aria-labelledby="idDenuncia-label"><g:link controller="denuncia" action="show" id="${extorsionTelefonicaInstance?.idDenuncia?.id}">${extorsionTelefonicaInstance?.idDenuncia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${extorsionTelefonicaInstance?.id}" />
					<g:link class="edit" action="edit" id="${extorsionTelefonicaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
