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
    <link href="<g:resource dir="css/home" file="aberto.css" />" rel="stylesheet">
    
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
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Local</th>
                            <th>Perfil</th>
                            <th>Ação</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Local</th>
                            <th>Perfil</th>
                            <th>Ação</th>
                        </tr>
                    </tfoot>
                     <tbody>
                         
                    <g:each  status="i" in="${usuarios}" var="item">
                        <g:if test="${item.id != session.espec.id}">
                            <tr id="l${i}">
                                <td><p>${item.id}</p></td>
                                <td><p>${item.nome}</p></td>
                                <td><p>${item.email}</p></td>
                                <td><p>${item.tipo}</p></td>
                                <td><p>${item.perfil}</p></td>                            
                                <td><p><a class="edicao" linha="l${i}" href="#">Editar</a></p></td>  
                                <td><p></p></td>                            
                            </tr>
                        </g:if>
                    </g:each>
                     </tbody>
                </table>
            </p>
            <g:form id="perfilForm" class="form-horizontal" url="[action:'mudar_perfil',controller:'usuario']" >          
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">#</label>
                    <div class="input-group col-lg-6">                        
                        <g:textField name="form_id" id="form_id" class="form-control" readonly="readonly" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">Nome</label>
                    <div class="input-group col-lg-6">                        
                        <g:textField name="form_nome" id="form_nome"  class="form-control" readonly="readonly" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">Perfil Atual</label>
                    <div class="input-group col-lg-6">                        
                        <g:textField name="form_perf_atual" id="form_perf_atual"  class="form-control" readonly="readonly" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">Novo Atual</label>
                    <div class="input-group col-lg-6">                        
                        <select name="form_perf_novo">                            
                            <option class="perfis" value="usuario"> Usuário </option>
                            <option class="perfis" value="analista"> Analista </option>
                            <option class="perfis" value="tecnico"> Técnico </option>
                        </select>
                    </div>
                </div>
            
                <div class="form-group">
                    <button type="submit" class="btn btn-success navbar-btn ">Atualizar Perfil</button> 
                </div>
            
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
    
    <script src="<g:resource dir="js/admin" file="usuarios.js"/>"></script>
  
  </body>
</html>
