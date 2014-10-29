<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Departamento de Suporte Técnico em TI ::: Fundação CECIERJ</title>

    <!-- BootStrap CSS -->
    <link href="<g:resource dir="css" file="bootstrap.min.css" />" rel="stylesheet">
    <!-- Meu CSS -->
    <link href="<g:resource dir="css/admin" file="admin.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img id="banner" src="<g:resource dir="images" file="banner_cecierj.png" />"/>
      </div>

      <div id="mensagem">
        <p id="titulo_admin"> Departamento de Suporte Técnico em Informática </p>
        <p id="texto"> 
         Area administrativa
        </p>
      </div>
      
      
      <div id="entrada">        
        <br>
                
        <g:form name="formValidar" class="form-horizontal" url="[action:'validar_especialista',controller:'usuario']">
            <div class="form-group">
                <label class="col-lg-3 control-label">E-mail</label>
                <div class="input-group col-lg-6">
                    <span class="input-group-addon glyphicon glyphicon-user"></span>
                    <g:textField name="email" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Senha</label>
                <div class="input-group col-lg-6">
                    <span class="input-group-addon glyphicon glyphicon-lock"></span>
                    <g:passwordField name="senha" class="form-control"/>
                </div>
            </div>  
            
            <div class="form-group">
                <button type="submit" class="btn btn-success navbar-btn ">Entrar</button> 
            </div>
        </g:form>              
        
        <p id="login_invalido">
            <g:message code="${flash.message}" />
        </p>
        
            
      </div>

      <div id="rodape">
        <p>Desenvolvido pelo Departamento de Suporte Técnico em Informática </p>        
      </div>      
    </div>
    
    
    <!-- jQuery  -->
    <script src="<g:resource dir="js" file="jquery-2.1.1.min.js"/>"></script>
    <!-- BootStrap JS -->    
    <script src="<g:resource dir="js" file="bootstrap.min.js"/>"></script>
    
    <script src="<g:resource dir="js" file="bootstrapValidator.min.js"/>"></script>
    
    <script src="<g:resource dir="js/admin" file="index.js"/>"></script>
  
  </body>
</html>
