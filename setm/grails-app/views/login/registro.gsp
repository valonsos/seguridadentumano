 

<div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h2 class=""><strong>Registrarme</strong></h2>
                        ¿Ya eres usuario? <a href="#" id="linkEntra2">Inicia sesión</a> 
                        <g:if test='${flash.message}'>
                            <div class='login_message'>${flash.message}</div>
                        </g:if>
                    </div>
                    <div class="panel-body">
                      <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Correo electronico" name='j_username' id='username' autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name='j_password' type="password" id='password'value="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Confirmar password" name='j_password' id='password'value="">
                                </div>
                                
                                <!-- Change this to a button or input when using this as a form -->
                                <input type='submit' class="btn btn-lg btn-primary btn-block" id="submit" value='Registrarme'/>
                               
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>