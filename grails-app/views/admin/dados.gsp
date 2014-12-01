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
          <img src="<g:resource dir="images" file="banner_cecierj.png" />" id="banner"/>
          
      </div>

      <div id="mensagem">
        <p id="titulo_admin"> Departamento de Suporte Técnico em Informática </p>             
      </div>
      
      <div id="barra_menu">
        <g:render template="menu" />    
      </div>
      
      <div id="entrada">
            <p>
                Bem Vindo <span class="meus_dados">${session.espec.nome}<span>
            </p>            
            <p>
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
    
    <script src="<g:resource dir="js/admin" file="home.js"/>"></script>
  
  </body>
</html>
