<!doctype html>
<html lang="pt">

    <head>
        <!-- importando cabecalho -->
        <g:render template="head" />    
        <!-- importando cabecalho -->
        
        <!-- JS -->        
        <script src="<g:resource dir="lib/js" file="bootstrapValidator.min.js"/>"></script>        
        <!-- JS -->

        <!-- CSS -->
        <link href="<g:resource dir="lib/css" file="bootstrapValidator.min.css" />" rel="stylesheet">
        <link href="<g:resource dir="css/admin" file="login.css" />" rel="stylesheet">
        <!-- CSS -->        
    </head>

    <body class=" theme-blue">
         
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <a class="" href="index.html">
                    <span class="navbar-brand">
                        <span class="fa fa-paper-plane"></span>
                        Departamento de Suporte em Informática
                    </span>
                </a>
            </div>
            <div class="navbar-collapse collapse" style="height: 1px;">
                <ul id="main-menu" class="nav navbar-nav navbar-right">
                    <li class="hidden-xs">
                        <g:link controller="navegar" action="cadastrarUsuario">
                            Cadastrar Novo Usuário         
                        </g:link>                      
                    </li>
                </ul>
            </div>
        </div>


        <div class="dialog">
            <div class="panel panel-default">             
                <p class="panel-heading no-collapse">Informe suas credenciais</p>
                <div class="panel-body">
                    <g:form name="formValidar" url="[action:'validar',controller:'usuario']">
                        <div class="form-group">
                            <label>E-mail</label>                            
                            <input type="text" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Senha</label>
                            <input type="password" name="senha" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary pull-right ">Entrar</button>                                                 
                        <div class="clearfix">
                        </div>
                    </g:form> 
                    <p class="letreiro_vermelho">
                        <br>
                        <g:message code="${flash.message}" />
                    </p>
                </div>
            </div>            
        
            <p class="pull-right" style="">
                <a href="#" target="blank" style="font-size: .75em; margin-top: .25em;">Deparamento de Suporte em Informática</a>
            </p>
            <p><a href="reset-password.html">Esqueci a senha?</a></p>
        </div>
    </body>
</html>
