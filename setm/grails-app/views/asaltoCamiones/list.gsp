
<%@ page import="com.guendabiaani.domain.setm.AsaltoCamiones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'asaltoCamiones.label', default: 'AsaltoCamiones')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-asaltoCamiones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-asaltoCamiones" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroCamion" title="${message(code: 'asaltoCamiones.numeroCamion.label', default: 'Numero Camion')}" />
					
						<th><g:message code="asaltoCamiones.ruta.label" default="Ruta" /></th>
					
						<g:sortableColumn property="horaAsalto" title="${message(code: 'asaltoCamiones.horaAsalto.label', default: 'Hora Asalto')}" />
					
						<g:sortableColumn property="fechaAsalto" title="${message(code: 'asaltoCamiones.fechaAsalto.label', default: 'Fecha Asalto')}" />
					
						<g:sortableColumn property="lugar" title="${message(code: 'asaltoCamiones.lugar.label', default: 'Lugar')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'asaltoCamiones.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${asaltoCamionesInstanceList}" status="i" var="asaltoCamionesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${asaltoCamionesInstance.id}">${fieldValue(bean: asaltoCamionesInstance, field: "numeroCamion")}</g:link></td>
					
						<td>${fieldValue(bean: asaltoCamionesInstance, field: "ruta")}</td>
					
						<td><g:formatDate date="${asaltoCamionesInstance.horaAsalto}" /></td>
					
						<td><g:formatDate date="${asaltoCamionesInstance.fechaAsalto}" /></td>
					
						<td>${fieldValue(bean: asaltoCamionesInstance, field: "lugar")}</td>
					
						<td>${fieldValue(bean: asaltoCamionesInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${asaltoCamionesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
