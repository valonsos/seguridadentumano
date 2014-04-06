
<%@ page import="com.guendabiaani.domain.setm.DelicuenciaOrganizada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'delicuenciaOrganizada.label', default: 'DelicuenciaOrganizada')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-delicuenciaOrganizada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-delicuenciaOrganizada" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="delicuenciaOrganizada.localidad.label" default="Localidad" /></th>
					
						<g:sortableColumn property="referenciaUbicacion" title="${message(code: 'delicuenciaOrganizada.referenciaUbicacion.label', default: 'Referencia Ubicacion')}" />
					
						<th><g:message code="delicuenciaOrganizada.idDenuncia.label" default="Id Denuncia" /></th>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'delicuenciaOrganizada.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${delicuenciaOrganizadaInstanceList}" status="i" var="delicuenciaOrganizadaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${delicuenciaOrganizadaInstance.id}">${fieldValue(bean: delicuenciaOrganizadaInstance, field: "localidad")}</g:link></td>
					
						<td>${fieldValue(bean: delicuenciaOrganizadaInstance, field: "referenciaUbicacion")}</td>
					
						<td>${fieldValue(bean: delicuenciaOrganizadaInstance, field: "idDenuncia")}</td>
					
						<td>${fieldValue(bean: delicuenciaOrganizadaInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${delicuenciaOrganizadaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
