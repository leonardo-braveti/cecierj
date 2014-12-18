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
      
      
      <div id="entrada">
            <p>
                Bem Vindo <span class="meus_dados">${session.espec.nome}<span>
            </p>   
            
            <br>

            <div id="mostrarDados">
                <p> Você está trabalhando no ticket: <span class="pintar" id="tnumero">${ticket.id}</span></p>
                <p> Criador: <span class="pintar" id="criador">${ticket.dono.nome}</span></p>
                <p> Assunto: <span class="pintar" id="assunto">${ticket.assunto}</span></p>
                <p> Descrição: <span class="pintar" id="descricao">${ticket.descricao}</span></p>
                <p> IP: <span class="pintar" id="ip">${ticket.ip}</span></p>
                <p> Prioridade: <span class="pintar" id="prioridade">${ticket.prioridade}</span></p>
                <p> Registros existentes: <span class="pintar" >${ticket.tarefas.size()}</span></p>
                
            </div>
            
            <br>
            
            <g:each var="item" status ="i" in="${ticket.tarefas}">  
                <div class="caixa_registros">
                    <p>Registro <span class="pintar">#${i+1}</span></p>
                    <p>${item.data}</p>
                    <p>${item.descricao}</p>
                </div>
                <br>
            </g:each>
            
            
            <button id="addTarefa" class="btn btn-primary">Incluir Registro</button>
            
            <p><p>
            
            <div id="formulario">          
                <g:form name="editionForm" class="form-horizontal" url="[action:'registrarTrabalho',controller:'ticket']" >                              
                    
                    <input type="hidden" name="id" value="${ticket.id}" >
                        
                    <div id="new_registro" class='form-group'>
                        <label class='col-lg-3 control-label'>Novo registro</label>
                        <div class='col-lg-6'>
                            <textarea rows='4' placeholder='Descreva o que foi realizado' class='form-control' name='descricao'></textarea>
                           
                        </div>
                    </div>
                    
                    <div id="encerrar" class="form-group">
                        <p>Deseja encerrar este ticket?</p>                        
                            <input type="radio" value="sim" name="concluir"> Sim 
                            <input type="radio" value="nao" name="concluir"> Não                        
                    </div>
                   
                    <div id="registrador" class="form-group">
                        <button type="submit" class="btn btn-success navbar-btn ">Registrar</button> 
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
            
    <script src="<g:resource dir="js" file="jquery.dataTables.min.js"/>"></script>
    
    <script src="<g:resource dir="js/admin" file="jquery.fancybox.js"/>"></script>  
    
    <script src="<g:resource dir="js/admin" file="registro.js"/>"></script>  
    
    <script>
        $("document").ready(function(){    
            $("#new_registro").hide(); 
            contador = 1;            
            //areaedit = $("<div class='form-group'><label class='col-lg-3 control-label'>Registro "+contador+"</label><div class='col-lg-6'><textarea rows='4' placeholder='Descreva o que foi realizado' class='form-control' name='descricao'></textarea></div></div>");     
            
            $("#addTarefa").click(function(){         
                $("#new_registro").show();                
            });
        });
    </script>
  
  </body>
</html>
