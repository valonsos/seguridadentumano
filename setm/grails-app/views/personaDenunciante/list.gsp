
<%@ page import="com.guendabiaani.domain.setm.PersonaDenunciante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaDenunciante.label', default: 'PersonaDenunciante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personaDenunciante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personaDenunciante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'personaDenunciante.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoP" title="${message(code: 'personaDenunciante.apellidoP.label', default: 'Apellido P')}" />
					
						<g:sortableColumn property="apellidoM" title="${message(code: 'personaDenunciante.apellidoM.label', default: 'Apellido M')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'personaDenunciante.edad.label', default: 'Edad')}" />
					
						<th><g:message code="personaDenunciante.sexo.label" default="Sexo" /></th>
					
						<th><g:message code="personaDenunciante.parentesco.label" default="Parentesco" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaDenuncianteInstanceList}" status="i" var="personaDenuncianteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaDenuncianteInstance.id}">${fieldValue(bean: personaDenuncianteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: personaDenuncianteInstance, field: "apellidoP")}</td>
					
						<td>${fieldValue(bean: personaDenuncianteInstance, field: "apellidoM")}</td>
					
						<td>${fieldValue(bean: personaDenuncianteInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: personaDenuncianteInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: personaDenuncianteInstance, field: "parentesco")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaDenuncianteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
