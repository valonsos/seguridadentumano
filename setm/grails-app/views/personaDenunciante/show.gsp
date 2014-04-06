
<%@ page import="com.guendabiaani.domain.setm.PersonaDenunciante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaDenunciante.label', default: 'PersonaDenunciante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personaDenunciante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personaDenunciante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personaDenunciante">
			
				<g:if test="${personaDenuncianteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="personaDenunciante.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="personaDenunciante.apellidoP.label" default="Apellido P" /></span>
					
						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="apellidoP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="personaDenunciante.apellidoM.label" default="Apellido M" /></span>
					
						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="apellidoM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="personaDenunciante.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="personaDenunciante.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:link controller="sexo" action="show" id="${personaDenuncianteInstance?.sexo?.id}">${personaDenuncianteInstance?.sexo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.parentesco}">
				<li class="fieldcontain">
					<span id="parentesco-label" class="property-label"><g:message code="personaDenunciante.parentesco.label" default="Parentesco" /></span>
					
						<span class="property-value" aria-labelledby="parentesco-label"><g:link controller="parentesco" action="show" id="${personaDenuncianteInstance?.parentesco?.id}">${personaDenuncianteInstance?.parentesco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="personaDenunciante.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="personaDenunciante.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:link controller="localidad" action="show" id="${personaDenuncianteInstance?.localidad?.id}">${personaDenuncianteInstance?.localidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="personaDenunciante.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="personaDenunciante.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.edoCivil}">
				<li class="fieldcontain">
					<span id="edoCivil-label" class="property-label"><g:message code="personaDenunciante.edoCivil.label" default="Edo Civil" /></span>
					
						<span class="property-value" aria-labelledby="edoCivil-label"><g:link controller="estadoCivil" action="show" id="${personaDenuncianteInstance?.edoCivil?.id}">${personaDenuncianteInstance?.edoCivil?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="personaDenunciante.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:link controller="ocupacion" action="show" id="${personaDenuncianteInstance?.ocupacion?.id}">${personaDenuncianteInstance?.ocupacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.domicilioLaboral}">
				<li class="fieldcontain">
					<span id="domicilioLaboral-label" class="property-label"><g:message code="personaDenunciante.domicilioLaboral.label" default="Domicilio Laboral" /></span>
					
						<span class="property-value" aria-labelledby="domicilioLaboral-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="domicilioLaboral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaDenuncianteInstance?.telefonoLaboral}">
				<li class="fieldcontain">
					<span id="telefonoLaboral-label" class="property-label"><g:message code="personaDenunciante.telefonoLaboral.label" default="Telefono Laboral" /></span>
					
						<span class="property-value" aria-labelledby="telefonoLaboral-label"><g:fieldValue bean="${personaDenuncianteInstance}" field="telefonoLaboral"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personaDenuncianteInstance?.id}" />
					<g:link class="edit" action="edit" id="${personaDenuncianteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
