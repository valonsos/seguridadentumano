<%@ page import="com.guendabiaani.domain.setm.Adicciones" %>
<script type="text/javascript" src= 'js/plugins/twitter-bootstrap-wizard.js'></script>
<script type="text/javascript" src= 'js/extraviados.js'></script>


<div class="fieldcontain ${hasErrors(bean: adiccionesInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="adicciones.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${adiccionesInstance?.descripcion}"/>
</div>

    <div id="rootwizard">
    <div class="navbar">
    <div class="navbar-inner">
    <div class="container">
    <ul>
    <li><a href="#tab1" data-toggle="tab">Primero</a></li>
    <li><a href="#tab2" data-toggle="tab">Segundo</a></li>
    <li><a href="#tab3" data-toggle="tab">Third</a></li>
    <li><a href="#tab4" data-toggle="tab">Forth</a></li>
    <li><a href="#tab5" data-toggle="tab">Fifth</a></li>
    <li><a href="#tab6" data-toggle="tab">Sixth</a></li>
    <li><a href="#tab7" data-toggle="tab">Seventh</a></li>
    </ul>
    </div>
    </div>
    </div>
    <div class="tab-content">
    <div class="tab-pane" id="tab1">
    1
    </div>
    <div class="tab-pane" id="tab2">
    2
    </div>
    <div class="tab-pane" id="tab3">
    3
    </div>
    <div class="tab-pane" id="tab4">
    4
    </div>
    <div class="tab-pane" id="tab5">
    5
    </div>
    <div class="tab-pane" id="tab6">
    6
    </div>
    <div class="tab-pane" id="tab7">
    7
    </div>
    <div style="float:right">
    <input type='button' class='btn button-next' name='next' value='Next' />
    </div>
    <div style="float:left">
    <input type='button' class='btn button-previous' name='previous' value='Previous' />
    </div>
    </div>	
    </div>

