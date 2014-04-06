<%@ page import="com.guendabiaani.domain.setm.ExtorsionTelefonica" %>



<div class="fieldcontain ${hasErrors(bean: extorsionTelefonicaInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="extorsionTelefonica.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" maxlength="10" value="${extorsionTelefonicaInstance?.numero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: extorsionTelefonicaInstance, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="extorsionTelefonica.hora.label" default="Hora" />
		
	</label>
	<g:datePicker name="hora" precision="day"  value="${extorsionTelefonicaInstance?.hora}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: extorsionTelefonicaInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="extorsionTelefonica.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day"  value="${extorsionTelefonicaInstance?.fecha}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: extorsionTelefonicaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="extorsionTelefonica.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${extorsionTelefonicaInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: extorsionTelefonicaInstance, field: 'idDenuncia', 'error')} required">
	<label for="idDenuncia">
		<g:message code="extorsionTelefonica.idDenuncia.label" default="Id Denuncia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idDenuncia" name="idDenuncia.id" from="${com.guendabiaani.domain.setm.Denuncia.list()}" optionKey="id" required="" value="${extorsionTelefonicaInstance?.idDenuncia?.id}" class="many-to-one"/>
</div>

