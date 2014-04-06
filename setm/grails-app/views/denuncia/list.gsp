
<%@ page import="com.guendabiaani.domain.setm.Denuncia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'denuncia.label', default: 'Denuncia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-denuncia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul class="list-group">
				<li class="list-group-item"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="list-group-item"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-denuncia" class="content scaffold-list" role="main">
			<h1>Listado de Denuncias</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
				<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'denuncia.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'denuncia.hora.label', default: 'Hora')}" />
					
						<th><g:message code="denuncia.personaDenunciante.label" default="Persona Denunciante" /></th>
					
						<th><g:message code="denuncia.personaExtraviada.label" default="Persona Extraviada" /></th>
					
						<th><g:message code="denuncia.delito.label" default="Delito" /></th>
					
						<th><g:message code="denuncia.tipoDenuncia.label" default="Tipo Denuncia" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${denunciaInstanceList}" status="i" var="denunciaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${denunciaInstance.id}">${fieldValue(bean: denunciaInstance, field: "fecha")}</g:link></td>
					
						<td><g:formatDate date="${denunciaInstance.hora}" /></td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "personaDenunciante.nombre")}</td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "personaExtraviada.nombre")}</td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "delito.descripcion")}</td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "tipoDenuncia.descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${denunciaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
