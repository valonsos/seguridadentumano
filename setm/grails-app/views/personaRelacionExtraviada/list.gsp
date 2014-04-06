
<%@ page import="com.guendabiaani.domain.setm.PersonaRelacionExtraviada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaRelacionExtraviada.label', default: 'PersonaRelacionExtraviada')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personaRelacionExtraviada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personaRelacionExtraviada" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'personaRelacionExtraviada.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoP" title="${message(code: 'personaRelacionExtraviada.apellidoP.label', default: 'Apellido P')}" />
					
						<g:sortableColumn property="apellidoM" title="${message(code: 'personaRelacionExtraviada.apellidoM.label', default: 'Apellido M')}" />
					
						<g:sortableColumn property="fechaNac" title="${message(code: 'personaRelacionExtraviada.fechaNac.label', default: 'Fecha Nac')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'personaRelacionExtraviada.edad.label', default: 'Edad')}" />
					
						<th><g:message code="personaRelacionExtraviada.sexo.label" default="Sexo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaRelacionExtraviadaInstanceList}" status="i" var="personaRelacionExtraviadaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaRelacionExtraviadaInstance.id}">${fieldValue(bean: personaRelacionExtraviadaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: personaRelacionExtraviadaInstance, field: "apellidoP")}</td>
					
						<td>${fieldValue(bean: personaRelacionExtraviadaInstance, field: "apellidoM")}</td>
					
						<td><g:formatDate date="${personaRelacionExtraviadaInstance.fechaNac}" /></td>
					
						<td>${fieldValue(bean: personaRelacionExtraviadaInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: personaRelacionExtraviadaInstance, field: "sexo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaRelacionExtraviadaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
