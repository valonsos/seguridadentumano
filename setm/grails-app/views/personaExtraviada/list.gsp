
<%@ page import="com.guendabiaani.domain.setm.PersonaExtraviada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaExtraviada.label', default: 'PersonaExtraviada')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personaExtraviada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personaExtraviada" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'personaExtraviada.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoP" title="${message(code: 'personaExtraviada.apellidoP.label', default: 'Apellido P')}" />
					
						<g:sortableColumn property="apellidoM" title="${message(code: 'personaExtraviada.apellidoM.label', default: 'Apellido M')}" />
					
						<g:sortableColumn property="fechaNac" title="${message(code: 'personaExtraviada.fechaNac.label', default: 'Fecha Nac')}" />
					
						<g:sortableColumn property="alias" title="${message(code: 'personaExtraviada.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'personaExtraviada.edad.label', default: 'Edad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaExtraviadaInstanceList}" status="i" var="personaExtraviadaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaExtraviadaInstance.id}">${fieldValue(bean: personaExtraviadaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: personaExtraviadaInstance, field: "apellidoP")}</td>
					
						<td>${fieldValue(bean: personaExtraviadaInstance, field: "apellidoM")}</td>
					
						<td><g:formatDate date="${personaExtraviadaInstance.fechaNac}" /></td>
					
						<td>${fieldValue(bean: personaExtraviadaInstance, field: "alias")}</td>
					
						<td>${fieldValue(bean: personaExtraviadaInstance, field: "edad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaExtraviadaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
