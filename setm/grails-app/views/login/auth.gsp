<!DOCTYPE html>
<html class="no-js"> 
    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Seguridad en tu mano</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'isotope.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'js/fancybox', file: 'jquery.fancybox.css')}" type="text/css">
       
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css">

         <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">

         <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        
        <link rel="stylesheet" href="${resource(dir: 'skin', file: 'default.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">
     
         <script type="text/javascript">

        var CONTEXT_ROOT = '${request.getContextPath()}';

        </script>
      
    </head>
     
    <body>
        <section id="header" class="appear"></section>
        <div class="navbar navbar-fixed-top" role="navigation" data-0="line-height:100px; height:150px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:150px; background-color:rgba(0,0,0,1);">
             <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="fa fa-bars color-white"></span>
                    </button>
                    <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:20px;">
                    <img src="${request.getContextPath()}/img/LOGO.png" alt="" />
                    </ul>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" data-0="margin-top:10px;" data-300="margin-top:5px;">
                        <li class="active"><a href="#" id="extraviado"><img src="${request.getContextPath()}/img/01.png" alt="" /></a></li>
                        <li><a href="#section-about" ><img src="${request.getContextPath()}/img/02.png" alt="" /></a></li>
                        <li><a href="#section-works"><img src="${request.getContextPath()}/img/06.png" alt="" /></a></li>
                        <li><a href="#section-contact"><img src="${request.getContextPath()}/img/04.png" alt="" /></a></li>
                         <li>
                        
                         <a href="#" id="linkInicia"><img src="${request.getContextPath()}/img/07.png" alt="" />Inicia </a>
                        
                         
                         <a href="#" id="linkRegistra"><img src="${request.getContextPath()}/img/08.png" alt="" />Registrarse</a>
                       
                         </li>

                    </ul>
                </div><!--/.navbar-collapse -->
            </div>
        </div>

        <section class="featured">
            <div class="container"> 
                <div class="row mar-bot40">
                    <div class="col-md-6 col-md-offset-3">
                        
                        
                    </div>
                </div>
            </div>
        </section>
        
        <!-- services -->
        <section id="section-services" class="section pad-bot30 bg-white">
        <div class="container"  id="espacio2"> 
        
        <div id="esp3">
            
           
-->
        </div>
        </div>
        </section>
            
        <!-- spacer section:testimonial -->
        
            
        <!-- about -->
   <div id="espacio">     
  <section id="parallax2" class="section parallax" data-stellar-background-ratio="0.5"> 


                <div class="align-center pad-top40 pad-bot40">
                    <blockquote class="bigquote color-white">Denuncia y consulta Ciudadana en ámbitos de seguridad</blockquote>
                <p class="color-white">Plataforma cívica de Reporte</p>
                </div>
    </section>

      </div>
        
        

        
    <section id="footer" class="section footer">
        <div class="container">
            <div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
                <div class="col-sm-12 align-center">
                    <ul class="social-network social-circle">
                       
                        <li><a href="https://www.facebook.com/pages/Seguridad-en-tu-mano/450035211793875?fref=ts" target="_blank" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/SeguridadEnMano"  target="_blank" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        
                    </ul>               
                </div>
            </div>

            <div class="row align-center copyright">
                    <div class="col-sm-12"><p>2014 Guendabiaani </p></div>
            </div>
        </div>

    </section>
    <a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a> 


    <script src="${resource(dir:'js',file:'modernizr-2.6.2-respond-1.1.0.min.js')}"></script>
   
    <script src="${resource(dir:'js',file:'jquery-1.10.2.js')}"></script>

    <script src="${resource(dir:'js',file:'jquery.easing.1.3.js')}"></script>

    <script src="${resource(dir:'js',file:'bootstrap.min.js')}"></script>
  
    <script src="${resource(dir:'js',file:'jquery.isotope.min.js')}"></script>
   <script src="${resource(dir:'js',file:'jquery.nicescroll.min.js')}"></script>
    
<script src="${resource(dir:'js/fancybox',file:'jquery.fancybox.pack.js')}"></script>
    
<script src="${resource(dir:'js/',file:'skrollr.min.js')}"></script>
 <script src="${resource(dir:'js/',file:'jquery.scrollTo-1.4.3.1-min.js')}"></script>
      <script src="${resource(dir:'js/',file:'jquery.localscroll-1.2.7-min.js')}"></script>
     <script src="${resource(dir:'js/',file:'stellar.js')}"></script>
    <script src="${resource(dir:'js/',file:'jquery.appear.js')}"></script>         
    <script src="${resource(dir:'js/',file:'validate.js')}"></script>
    <script src="${resource(dir:'js/',file:'main.js')}"></script>



    <script type="text/javascript">


                $(function(){
                    

                        

                        $("#linkRegistra").click(function(){

                            registrar();
                        });

                        

                        $("#linkInicia").click(function(){

                            entra();
                        });



                         $("#extraviado").click(function(){


                             var unused = $.ajax({type:'POST', 
                                    url:CONTEXT_ROOT+'/login/marco',
                                      success:function(data,textStatus)
                                      {
                                      
                                            $('#espacio').html(data);
                                        
                                     
                                      },    
                                      error:function(XMLHttpRequest,textStatus,errorThrown)
                                          {     $('#diverror').html(XMLHttpRequest.responseText);}
                                      ,
                                      complete:function(data,textStatus){
                                           
                                         $('#esp3').html('<img src="${request.getContextPath()}/img/01A.png" alt="" /> <h3>Personas Extraviadas</h3>');

                                      }
                                    });

                        });


                });


    function entra(){

          var unused = $.ajax({type:'POST', 
                                    url:CONTEXT_ROOT+'/login/entrar',
                                      success:function(data,textStatus)
                                      {
                                      
                                            $('#espacio2').html(data);
                                        
                                     
                                      },    
                                      error:function(XMLHttpRequest,textStatus,errorThrown)
                                          {     $('#diverror').html(XMLHttpRequest.responseText);}
                                      ,
                                      complete:function(data,textStatus){
                                            $("#linkRegistro2").click(function(){

                                            registrar();
                                        });

                                      }
                                    });

    }
    function registrar(){

                     var unused = $.ajax({type:'POST', 
                                    url:CONTEXT_ROOT+'/login/registro',
                                      success:function(data,textStatus)
                                      {
                                      
                                            $('#espacio2').html(data);
                                        
                                     
                                      },
                                      error:function(XMLHttpRequest,textStatus,errorThrown)
                                          {     $('#diverror').html(XMLHttpRequest.responseText);}
                                      ,
                                      complete:function(data,textStatus){
                                         $("#linkEntra2").click(function(){

                                            entra();
                                        });
                                      }
                                    });

    }

    </script>

    </body>
</html>