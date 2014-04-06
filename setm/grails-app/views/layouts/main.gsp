<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>:Seguridad en tu mano:</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
			

		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">

		<link rel="stylesheet" href="${resource(dir: 'font-awesome/css', file: 'font-awesome.css')}" type="text/css">
    	<link rel="stylesheet" href="${resource(dir: 'css', file: 'sb-admin.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css/plugins/morris', file: 'morris-0.4.3.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'js/plugins/pickadate/themes/', file: 'default.time.css')}" type="text/css">
         <link rel="stylesheet" href="${resource(dir: 'js/plugins/pickadate/themes/', file: 'default.date.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'js/plugins/pickadate/themes/', file: 'default.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css/plugins/timeline', file: 'timeline.css')}" type="text/css">
		<!-- <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
-->
       

	    <script src="${resource(dir:'js',file:'jquery-1.10.2.js')}"></script>
	    <script src="${resource(dir:'js',file:'bootstrap.min.js')}"></script>
	    <script src="${resource(dir:'js/plugins/metisMenu',file:'jquery.metisMenu.js')}"></script>
	    <script src="${resource(dir:'js',file:'sb-admin.js')}"></script>
        <script src="${resource(dir:'js/plugins/pickadate/',file:'picker.js')}"></script>
        <script src="${resource(dir:'js/plugins/pickadate/',file:'picker.date.js')}"></script>
        <script src="${resource(dir:'js/plugins/pickadate/',file:'picker.time.js')}"></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

		  
		<script src="${resource(dir:'js/plugins/morris',file:'raphael-2.1.0.min.js')}"></script>
		
         <script src="${resource(dir:'js/plugins/bootstrapWizard',file:'twitter-bootstrap-wizard.js')}"></script>
        
        <!--<script src="${resource(dir:'js/plugins/morris',file:'morris.js')}"></script>
		<script src="${resource(dir:'js/demo',file:'dashboard-demo.js')}"></script>
	 

-->

        <script type="text/javascript">

        var CONTEXT_ROOT = '${request.getContextPath()}';

        </script>
        
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		



    <div id="wrapper">

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                	<img src="${request.getContextPath()}/images/logo.png" height="70" width="140" class="img-responsive" />
           
            </div>
                <a class="navbar-brand" href="/setm/denuncia">Seguridad en tu mano</a>
               
            <!-- /.navbar-header -->
			<br>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Joven Desaparecido</strong>
                                    <span class="pull-right text-muted">
                                        <em>01-Abril-2014</em>
                                    </span>
                                </div>
                                <div>Pelo negro, 18 años, portaba jeans cuando desaparecio...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Santos Olmos</strong>
                                    <span class="pull-right text-muted">
                                        <em>23-Mayo-2014</em>
                                    </span>
                                </div>
                                <div>Reportada como desaparecida...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Leonel Rueda</strong>
                                    <span class="pull-right text-muted">
                                        <em>15-Mayo-2014</em>
                                    </span>
                                </div>
                                <div>Encontrado sin vida.</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Leer todos los mensajes.</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <!--<li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>-->
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Perfil de usuario</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Ajustes</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                        <g:link controller="logout" action="index"> 
			              <i class="fa fa-sign-out fa-fw"></i>  
			              Cerrar Sesion</g:link>
                        
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="/setm/"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Graficas<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Grafica pastel</a>
                                </li>
                                <li>
                                    <a href="#">Historico</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <li>
                            <a href="/setm/denuncia"><i class="fa fa-dashboard fa-fw"></i> Denuncia</a>
                        </li>
                        
                    </ul>
                    <!-- /#side-menu -->
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            
           <g:layoutBody/>
        </div>
        
        
    </div>
   

		


		<r:layoutResources />
		     
	</body>
</html>
