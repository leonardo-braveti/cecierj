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
    <link href="<g:resource dir="css/home" file="index.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img src="<g:resource dir="images" file="banner_cecierj.png" />" id="banner"/>
          
      </div>

      <div id="mensagem">
        <p id="titulo"> Departamento de Suporte Técnico em Informática </p>        
        <g:render template="menu" />     
      </div>
      
      
      <div id="entrada">
            <p>
                Bem Vindo <span class="meus_dados">${session.user.nome}<span>
            <p>   

            <g:form name="registrationForm" class="form-horizontal" url="[action:'salvar',controller:'ticket']" >          

            <div class="form-group">
                <label class="col-lg-3 control-label">Assunto</label>
                <div class="col-lg-6">
                <input type="text" class="form-control" name="assunto" placeholder="Informe o assunto da solicitação">
                </div>
            </div>
          
            <div class="form-group">  
                <label class="col-lg-3 control-label">Prioridade</label>
                <div class="col-lg-6">
                    <select lass="form-control" name="prioridade"> 
                        <option value="normal">Normal</option>
                        <option value="alta">Alta</option>                    
                    </select>              
                </div>
              </div>
          
            <div class="form-group">
                <label class="col-lg-3 control-label">Descrição do Problema</label>
                <div class="col-lg-6">                
                    <textarea rows="6" placeholder="Descreva o serviço a ser realizado" class="form-control" name="descricao"></textarea>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Endereço IP</label>
                <div class="col-lg-6">                
                    <input type="text" class="form-control" name="ip" readonly="readonly" value="${ip}"  />
                </div>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary navbar-btn ">Enviar</button>
                <button type="reset" class="btn btn-danger navbar-btn ">Limpar</button> 
            </div>

        </g:form>
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
    
    <script src="<g:resource dir="js" file="index.js"/>"></script>
  
  </body>
</html>
