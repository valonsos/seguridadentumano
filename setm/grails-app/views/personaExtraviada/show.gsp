
<%@ page import="com.guendabiaani.domain.setm.PersonaExtraviada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaExtraviada.label', default: 'PersonaExtraviada')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personaExtraviada" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personaExtraviada" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personaExtraviada">
			
				<g:if test="${personaExtraviadaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="personaExtraviada.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="personaExtraviada.apellidoP.label" default="Apellido P" /></span>
					
						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="apellidoP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="personaExtraviada.apellidoM.label" default="Apellido M" /></span>
					
						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="apellidoM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.fechaNac}">
				<li class="fieldcontain">
					<span id="fechaNac-label" class="property-label"><g:message code="personaExtraviada.fechaNac.label" default="Fecha Nac" /></span>
					
						<span class="property-value" aria-labelledby="fechaNac-label"><g:formatDate date="${personaExtraviadaInstance?.fechaNac}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="personaExtraviada.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="personaExtraviada.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="personaExtraviada.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:link controller="sexo" action="show" id="${personaExtraviadaInstance?.sexo?.id}">${personaExtraviadaInstance?.sexo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.estatura}">
				<li class="fieldcontain">
					<span id="estatura-label" class="property-label"><g:message code="personaExtraviada.estatura.label" default="Estatura" /></span>
					
						<span class="property-value" aria-labelledby="estatura-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="estatura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.complexion}">
				<li class="fieldcontain">
					<span id="complexion-label" class="property-label"><g:message code="personaExtraviada.complexion.label" default="Complexion" /></span>
					
						<span class="property-value" aria-labelledby="complexion-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="complexion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.tipoCabello}">
				<li class="fieldcontain">
					<span id="tipoCabello-label" class="property-label"><g:message code="personaExtraviada.tipoCabello.label" default="Tipo Cabello" /></span>
					
						<span class="property-value" aria-labelledby="tipoCabello-label"><g:link controller="tipoCabello" action="show" id="${personaExtraviadaInstance?.tipoCabello?.id}">${personaExtraviadaInstance?.tipoCabello?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.colorCabello}">
				<li class="fieldcontain">
					<span id="colorCabello-label" class="property-label"><g:message code="personaExtraviada.colorCabello.label" default="Color Cabello" /></span>
					
						<span class="property-value" aria-labelledby="colorCabello-label"><g:link controller="colorCabello" action="show" id="${personaExtraviadaInstance?.colorCabello?.id}">${personaExtraviadaInstance?.colorCabello?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.colorOjos}">
				<li class="fieldcontain">
					<span id="colorOjos-label" class="property-label"><g:message code="personaExtraviada.colorOjos.label" default="Color Ojos" /></span>
					
						<span class="property-value" aria-labelledby="colorOjos-label"><g:link controller="colorOjos" action="show" id="${personaExtraviadaInstance?.colorOjos?.id}">${personaExtraviadaInstance?.colorOjos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.vestimenta}">
				<li class="fieldcontain">
					<span id="vestimenta-label" class="property-label"><g:message code="personaExtraviada.vestimenta.label" default="Vestimenta" /></span>
					
						<span class="property-value" aria-labelledby="vestimenta-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="vestimenta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="personaExtraviada.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:link controller="nacionalidad" action="show" id="${personaExtraviadaInstance?.nacionalidad?.id}">${personaExtraviadaInstance?.nacionalidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="personaExtraviada.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="personaExtraviada.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:link controller="localidad" action="show" id="${personaExtraviadaInstance?.localidad?.id}">${personaExtraviadaInstance?.localidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="personaExtraviada.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="personaExtraviada.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.edoCivil}">
				<li class="fieldcontain">
					<span id="edoCivil-label" class="property-label"><g:message code="personaExtraviada.edoCivil.label" default="Edo Civil" /></span>
					
						<span class="property-value" aria-labelledby="edoCivil-label"><g:link controller="estadoCivil" action="show" id="${personaExtraviadaInstance?.edoCivil?.id}">${personaExtraviadaInstance?.edoCivil?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.gustosPreferencias}">
				<li class="fieldcontain">
					<span id="gustosPreferencias-label" class="property-label"><g:message code="personaExtraviada.gustosPreferencias.label" default="Gustos Preferencias" /></span>
					
						<span class="property-value" aria-labelledby="gustosPreferencias-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="gustosPreferencias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.curp}">
				<li class="fieldcontain">
					<span id="curp-label" class="property-label"><g:message code="personaExtraviada.curp.label" default="Curp" /></span>
					
						<span class="property-value" aria-labelledby="curp-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="curp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.cveIfe}">
				<li class="fieldcontain">
					<span id="cveIfe-label" class="property-label"><g:message code="personaExtraviada.cveIfe.label" default="Cve Ife" /></span>
					
						<span class="property-value" aria-labelledby="cveIfe-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="cveIfe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.ultimaFechaVisto}">
				<li class="fieldcontain">
					<span id="ultimaFechaVisto-label" class="property-label"><g:message code="personaExtraviada.ultimaFechaVisto.label" default="Ultima Fecha Visto" /></span>
					
						<span class="property-value" aria-labelledby="ultimaFechaVisto-label"><g:formatDate date="${personaExtraviadaInstance?.ultimaFechaVisto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.maxNivelEstudio}">
				<li class="fieldcontain">
					<span id="maxNivelEstudio-label" class="property-label"><g:message code="personaExtraviada.maxNivelEstudio.label" default="Max Nivel Estudio" /></span>
					
						<span class="property-value" aria-labelledby="maxNivelEstudio-label"><g:link controller="nivelEstudio" action="show" id="${personaExtraviadaInstance?.maxNivelEstudio?.id}">${personaExtraviadaInstance?.maxNivelEstudio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.nombreInstitucionEducativo}">
				<li class="fieldcontain">
					<span id="nombreInstitucionEducativo-label" class="property-label"><g:message code="personaExtraviada.nombreInstitucionEducativo.label" default="Nombre Institucion Educativo" /></span>
					
						<span class="property-value" aria-labelledby="nombreInstitucionEducativo-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="nombreInstitucionEducativo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="personaExtraviada.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:link controller="ocupacion" action="show" id="${personaExtraviadaInstance?.ocupacion?.id}">${personaExtraviadaInstance?.ocupacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.nombreEmpresa}">
				<li class="fieldcontain">
					<span id="nombreEmpresa-label" class="property-label"><g:message code="personaExtraviada.nombreEmpresa.label" default="Nombre Empresa" /></span>
					
						<span class="property-value" aria-labelledby="nombreEmpresa-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="nombreEmpresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.telefonoEmpresa}">
				<li class="fieldcontain">
					<span id="telefonoEmpresa-label" class="property-label"><g:message code="personaExtraviada.telefonoEmpresa.label" default="Telefono Empresa" /></span>
					
						<span class="property-value" aria-labelledby="telefonoEmpresa-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="telefonoEmpresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.antiguedad}">
				<li class="fieldcontain">
					<span id="antiguedad-label" class="property-label"><g:message code="personaExtraviada.antiguedad.label" default="Antiguedad" /></span>
					
						<span class="property-value" aria-labelledby="antiguedad-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="antiguedad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.domicilioLaboral}">
				<li class="fieldcontain">
					<span id="domicilioLaboral-label" class="property-label"><g:message code="personaExtraviada.domicilioLaboral.label" default="Domicilio Laboral" /></span>
					
						<span class="property-value" aria-labelledby="domicilioLaboral-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="domicilioLaboral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.enfermedadesDetectadas}">
				<li class="fieldcontain">
					<span id="enfermedadesDetectadas-label" class="property-label"><g:message code="personaExtraviada.enfermedadesDetectadas.label" default="Enfermedades Detectadas" /></span>
					
						<span class="property-value" aria-labelledby="enfermedadesDetectadas-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="enfermedadesDetectadas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.medicamentosSuministrados}">
				<li class="fieldcontain">
					<span id="medicamentosSuministrados-label" class="property-label"><g:message code="personaExtraviada.medicamentosSuministrados.label" default="Medicamentos Suministrados" /></span>
					
						<span class="property-value" aria-labelledby="medicamentosSuministrados-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="medicamentosSuministrados"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.grupoSanguineo}">
				<li class="fieldcontain">
					<span id="grupoSanguineo-label" class="property-label"><g:message code="personaExtraviada.grupoSanguineo.label" default="Grupo Sanguineo" /></span>
					
						<span class="property-value" aria-labelledby="grupoSanguineo-label"><g:link controller="grupoSanguineo" action="show" id="${personaExtraviadaInstance?.grupoSanguineo?.id}">${personaExtraviadaInstance?.grupoSanguineo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.numeroAfiliacionSeguroSocial}">
				<li class="fieldcontain">
					<span id="numeroAfiliacionSeguroSocial-label" class="property-label"><g:message code="personaExtraviada.numeroAfiliacionSeguroSocial.label" default="Numero Afiliacion Seguro Social" /></span>
					
						<span class="property-value" aria-labelledby="numeroAfiliacionSeguroSocial-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="numeroAfiliacionSeguroSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.transporteUtilizado}">
				<li class="fieldcontain">
					<span id="transporteUtilizado-label" class="property-label"><g:message code="personaExtraviada.transporteUtilizado.label" default="Transporte Utilizado" /></span>
					
						<span class="property-value" aria-labelledby="transporteUtilizado-label"><g:link controller="transporte" action="show" id="${personaExtraviadaInstance?.transporteUtilizado?.id}">${personaExtraviadaInstance?.transporteUtilizado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.tipoAusencia}">
				<li class="fieldcontain">
					<span id="tipoAusencia-label" class="property-label"><g:message code="personaExtraviada.tipoAusencia.label" default="Tipo Ausencia" /></span>
					
						<span class="property-value" aria-labelledby="tipoAusencia-label"><g:link controller="tipoAusencia" action="show" id="${personaExtraviadaInstance?.tipoAusencia?.id}">${personaExtraviadaInstance?.tipoAusencia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.horaAusencia}">
				<li class="fieldcontain">
					<span id="horaAusencia-label" class="property-label"><g:message code="personaExtraviada.horaAusencia.label" default="Hora Ausencia" /></span>
					
						<span class="property-value" aria-labelledby="horaAusencia-label"><g:formatDate date="${personaExtraviadaInstance?.horaAusencia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.adicciones}">
				<li class="fieldcontain">
					<span id="adicciones-label" class="property-label"><g:message code="personaExtraviada.adicciones.label" default="Adicciones" /></span>
					
						<span class="property-value" aria-labelledby="adicciones-label"><g:link controller="adicciones" action="show" id="${personaExtraviadaInstance?.adicciones?.id}">${personaExtraviadaInstance?.adicciones?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.parentescoCampania}">
				<li class="fieldcontain">
					<span id="parentescoCampania-label" class="property-label"><g:message code="personaExtraviada.parentescoCampania.label" default="Parentesco Campania" /></span>
					
						<span class="property-value" aria-labelledby="parentescoCampania-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="parentescoCampania"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.ultimoLugarVisto}">
				<li class="fieldcontain">
					<span id="ultimoLugarVisto-label" class="property-label"><g:message code="personaExtraviada.ultimoLugarVisto.label" default="Ultimo Lugar Visto" /></span>
					
						<span class="property-value" aria-labelledby="ultimoLugarVisto-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="ultimoLugarVisto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.conducta}">
				<li class="fieldcontain">
					<span id="conducta-label" class="property-label"><g:message code="personaExtraviada.conducta.label" default="Conducta" /></span>
					
						<span class="property-value" aria-labelledby="conducta-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="conducta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.descripcionProblemaCausa}">
				<li class="fieldcontain">
					<span id="descripcionProblemaCausa-label" class="property-label"><g:message code="personaExtraviada.descripcionProblemaCausa.label" default="Descripcion Problema Causa" /></span>
					
						<span class="property-value" aria-labelledby="descripcionProblemaCausa-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="descripcionProblemaCausa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.latitud}">
				<li class="fieldcontain">
					<span id="latitud-label" class="property-label"><g:message code="personaExtraviada.latitud.label" default="Latitud" /></span>
					
						<span class="property-value" aria-labelledby="latitud-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="latitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.longitud}">
				<li class="fieldcontain">
					<span id="longitud-label" class="property-label"><g:message code="personaExtraviada.longitud.label" default="Longitud" /></span>
					
						<span class="property-value" aria-labelledby="longitud-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="longitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.acompanado}">
				<li class="fieldcontain">
					<span id="acompanado-label" class="property-label"><g:message code="personaExtraviada.acompanado.label" default="Acompanado" /></span>
					
						<span class="property-value" aria-labelledby="acompanado-label"><g:formatBoolean boolean="${personaExtraviadaInstance?.acompanado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaExtraviadaInstance?.domicilioInstitucionEducativa}">
				<li class="fieldcontain">
					<span id="domicilioInstitucionEducativa-label" class="property-label"><g:message code="personaExtraviada.domicilioInstitucionEducativa.label" default="Domicilio Institucion Educativa" /></span>
					
						<span class="property-value" aria-labelledby="domicilioInstitucionEducativa-label"><g:fieldValue bean="${personaExtraviadaInstance}" field="domicilioInstitucionEducativa"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personaExtraviadaInstance?.id}" />
					<g:link class="edit" action="edit" id="${personaExtraviadaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
