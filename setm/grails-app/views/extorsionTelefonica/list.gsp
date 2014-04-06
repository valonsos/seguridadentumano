
<%@ page import="com.guendabiaani.domain.setm.ExtorsionTelefonica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'extorsionTelefonica.label', default: 'ExtorsionTelefonica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-extorsionTelefonica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-extorsionTelefonica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numero" title="${message(code: 'extorsionTelefonica.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'extorsionTelefonica.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'extorsionTelefonica.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'extorsionTelefonica.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="extorsionTelefonica.idDenuncia.label" default="Id Denuncia" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${extorsionTelefonicaInstanceList}" status="i" var="extorsionTelefonicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${extorsionTelefonicaInstance.id}">${fieldValue(bean: extorsionTelefonicaInstance, field: "numero")}</g:link></td>
					
						<td><g:formatDate date="${extorsionTelefonicaInstance.hora}" /></td>
					
						<td><g:formatDate date="${extorsionTelefonicaInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: extorsionTelefonicaInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: extorsionTelefonicaInstance, field: "idDenuncia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${extorsionTelefonicaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
