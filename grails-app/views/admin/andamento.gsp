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
    
    <link href="<g:resource dir="css/admin" file="jquery.fancybox.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="jquery.dataTables.min2.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img src="<g:resource dir="images" file="banner_cecierj.png" />" id="banner"/>
          
      </div>

      <div id="mensagem">
        <p id="titulo_admin"> Departamento de Suporte Técnico em Informática </p>
          <g:render template="menu" />     
      </div>
      
      
      <div id="andamento_entrada">
            <p>
                Bem Vindo <span class="meus_dados">${session.espec.nome}<span>
            <p>   
            
            <p>
                <table id="tabela" class="compact cell-border order-column">   
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Departamento</th>
                            <th>Telefone</th>
                            <th>Assunto</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>                            
                            <th>IP</th>          
                            <th>Responsável</th>
                            <th>Tarefas</th>    
                            <th>Ediçao</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Departamento</th>
                            <th>Telefone</th>
                            <th>Assunto</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>                            
                            <th>IP</th>          
                            <th>Responsável</th>
                            <th>Tarefas</th>    
                            <th>Ediçao</th>
                        </tr>
                    </tfoot>
                     <tbody>
                    <g:each status="i" var="item" in="${tickets}">
                        <tr id="l${i}">
                            <td><p>${item.id}</p></td>
                            <td><p>${item.dono.nome}</p></td>
                            <td><p>${item.dono.setor}</p></td>
                            <td><p>${item.dono.telefone}</p></td>
                            <td><p>${item.assunto}</p></td>
                            <td><p>${item.descricao}</p></td>
                            <td><p>${item.prioridade}</p></td>
                            <td><p>${item.abertura}</p></td>
                            <td><p>${item.ip}</p></td>
                            <td><p>${item.responsavel.nome}</p></td>  
                            <td><p>${item.tarefas.size()}</p></td>  
                            <td><p><a href="registro/${item.id}">Editar</a></p></td>                                                                                    
                    </g:each>
                     </tbody>
                </table>
            </p>
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
    
    <script src="<g:resource dir="js/admin" file="jquery.fancybox.js"/>"></script>  
    
    <script src="<g:resource dir="js/admin" file="andamento.js"/>"></script>  

   
  
  </body>
</html>
