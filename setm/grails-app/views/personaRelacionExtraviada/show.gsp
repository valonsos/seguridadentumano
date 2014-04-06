
<%@ page import="com.guendabiaani.domain.setm.PersonaRelacionExtraviada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personaRelacionExtraviada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personaRelacionExtraviada" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personaRelacionExtraviada">
			
				<g:if test="${personaRelacionExtraviadaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="personaRelacionExtraviada.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="personaRelacionExtraviada.apellidoP.label" default="Apellido P" /></span>
					
						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="apellidoP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="personaRelacionExtraviada.apellidoM.label" default="Apellido M" /></span>
					
						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="apellidoM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.fechaNac}">
				<li class="fieldcontain">
					<span id="fechaNac-label" class="property-label"><g:message code="personaRelacionExtraviada.fechaNac.label" default="Fecha Nac" /></span>
					
						<span class="property-value" aria-labelledby="fechaNac-label"><g:formatDate date="${personaRelacionExtraviadaInstance?.fechaNac}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="personaRelacionExtraviada.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="personaRelacionExtraviada.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:link controller="sexo" action="show" id="${personaRelacionExtraviadaInstance?.sexo?.id}">${personaRelacionExtraviadaInstance?.sexo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.parentesco}">
				<li class="fieldcontain">
					<span id="parentesco-label" class="property-label"><g:message code="personaRelacionExtraviada.parentesco.label" default="Parentesco" /></span>
					
						<span class="property-value" aria-labelledby="parentesco-label"><g:link controller="parentesco" action="show" id="${personaRelacionExtraviadaInstance?.parentesco?.id}">${personaRelacionExtraviadaInstance?.parentesco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="personaRelacionExtraviada.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="personaRelacionExtraviada.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:link controller="localidad" action="show" id="${personaRelacionExtraviadaInstance?.localidad?.id}">${personaRelacionExtraviadaInstance?.localidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="personaRelacionExtraviada.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="personaRelacionExtraviada.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${personaRelacionExtraviadaInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.edoCivil}">
				<li class="fieldcontain">
					<span id="edoCivil-label" class="property-label"><g:message code="personaRelacionExtraviada.edoCivil.label" default="Edo Civil" /></span>
					
						<span class="property-value" aria-labelledby="edoCivil-label"><g:link controller="estadoCivil" action="show" id="${personaRelacionExtraviadaInstance?.edoCivil?.id}">${personaRelacionExtraviadaInstance?.edoCivil?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="personaRelacionExtraviada.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:link controller="ocupacion" action="show" id="${personaRelacionExtraviadaInstance?.ocupacion?.id}">${personaRelacionExtraviadaInstance?.ocupacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaRelacionExtraviadaInstance?.personaExtraviada}">
				<li class="fieldcontain">
					<span id="personaExtraviada-label" class="property-label"><g:message code="personaRelacionExtraviada.personaExtraviada.label" default="Persona Extraviada" /></span>
					
						<span class="property-value" aria-labelledby="personaExtraviada-label"><g:link controller="personaExtraviada" action="show" id="${personaRelacionExtraviadaInstance?.personaExtraviada?.id}">${personaRelacionExtraviadaInstance?.personaExtraviada?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personaRelacionExtraviadaInstance?.id}" />
					<g:link class="edit" action="edit" id="${personaRelacionExtraviadaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
