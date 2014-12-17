<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="head" />    
        <!-- importando cabecalho -->
        <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">
        <link href="<g:resource dir="css/admin" file="login.css" />" rel="stylesheet">
        <script src="<g:resource dir="js" file="bootstrapValidator.min.js"/>"></script>
        <style type="text/css">
            #line-chart {
                height:300px;
                width:800px;
                margin: 0px auto;
                margin-top: 1em;
            }
            .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
                color: #fff;
            }
        </style>

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="../assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
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

            </div>
        </div>


        <div class="dialog">
            <div class="panel panel-default">
                <p class="panel-heading no-collapse">Informe suas credenciais</p>
                <div class="panel-body">
                    <g:form name="formValidar" url="[action:'validar_especialista',controller:'usuario']">
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
                    <p id="login_invalido">
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
        
         <script type="text/javascript">
            $(function() {
                var match = document.cookie.match(new RegExp('color=([^;]+)'));
                if(match) var color = match[1];
                if(color) {
                    $('body').removeClass(function (index, css) {
                        return (css.match (/\btheme-\S+/g) || []).join(' ')
                    })
                    $('body').addClass('theme-' + color);
                }

                $('[data-popover="true"]').popover({html: true});            
            });
        </script>

        <script type="text/javascript">
            $(function() {
                var uls = $('.sidebar-nav > ul > *').clone();
                uls.addClass('visible-xs');
                $('#main-menu').append(uls.clone());
            });
        </script>
         
        <script type="text/javascript">
            $("[rel=tooltip]").tooltip();
            $(function() {
                $('.demo-cancel-click').click(function(){return false;});
            });
        </script>


    </body>
</html>
