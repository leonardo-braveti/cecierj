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
    <link href="<g:resource dir="css/admin" file="aberto.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="jquery.dataTables.min2.css" />" rel="stylesheet">

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
                Bem Vindo <span class="meus_dados">${session.espec.nome}<span>
            <p>   
            
            <p>
                <table id="tabela" class="compact cell-border order-column">   
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Assunto</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>
                            <th>Fechamento</th>           
                            <th>Responsável</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Assunto</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>                            
                            <th>Fechamento</th>                                                               
                            <th>Responsável</th>
                        </tr>
                    </tfoot>
                     <tbody>
                    <g:each in="${tickets}">
                        <tr>
                            <td><p>${it.id}</p></td>
                            <td><p>${it.dono.nome}</p></td>
                            <td><p>${it.assunto}</p></td>
                            <td><p>${it.descricao}</p></td>
                            <td><p>${it.prioridade}</p></td>
                            <td><p>${it.abertura}</p></td>
                            <td><p>${it.fechamento}</p></td>
                            <td><p>${it.${it.responsavel.nome}</p></td>                            
                    </g:each>
                     </tbody>
                </table>
            </p>
            <g:form name="registrationForm" class="form-horizontal" url="[action:'salvar',controller:'ticket']" >          

            
            </g:form>
            
	
            <div id="StudentTableContainer"></div>
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
            
    <script src="<g:resource dir="js" file="jquery.dataTables.min.js"/>"></script>
    
    <script src="<g:resource dir="js" file="aberto.js"/>"></script>
  
  </body>
</html>
