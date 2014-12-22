<!doctype html>
<html lang="pt">
     <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
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
              <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Aircraft</span></a></div>

            <div class="navbar-collapse collapse" style="height: 1px;">

            </div>
        </div>
        

        <div class="dialog">
            <div class="panel panel-default">
                <p class="panel-heading no-collapse">Novo Usuário</p>
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label>Nome Completo</label>
                            <input type="text" id="nome" name="nome" class="form-control span12">
                        </div>
                        <div class="form-group">
                            <label>E-mail</label>
                            <input type="text" id="email" nome="email" class="form-control span12">
                        </div>
                    
                        <div class="form-group">
                            <label>Telefone</label>
                            <input type="text" id="telefone" nome="telefone" class="form-control span12">
                        </div>
                        
                        <div class="form-group">
                            <label>Departamento / Setor </label>
                            <input type="text" class="form-control span12">
                        </div>
                
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control span12">
                        </div>  
                    
                        <div class="form-group">
                            <a href="index.html" class="btn btn-primary pull-right">Cadastrar Usuario</a>                            
                        </div>
                    
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>            
        </div>
    </body>
</html>
