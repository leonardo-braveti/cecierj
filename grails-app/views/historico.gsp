<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
        <link rel="stylesheet" href="<g:resource dir='css' file='usuarios.css'/>"/>
        <g:javascript library="jquery" />
    </head>
    
    <body class=" theme-blue">
         <!-- importando cabecalho -->
        <g:render template="../topo" />    
        <!-- importando cabecalho -->
    

        <div class="sidebar-nav">
            <!-- importando cabecalho -->
            <g:render template="../menu" />    
            <!-- importando cabecalho -->    
        </div>

        <div class="content">
            <div class="header">            
                <h1 class="page-title">Tickets</h1>
                <ul class="breadcrumb">            
                  <li><a>Tickets abertos</a></li>
                </ul>
            </div>

            <div class="main-content">            
                <!--<div class="btn-toolbar list-toolbar">
                    <button class="btn btn-primary"><i class="fa fa-plus"></i> New User</button>
                    <button class="btn btn-default">Import</button>
                    <button class="btn btn-default">Export</button>
                    <div class="btn-group">
                    </div>
                </div>-->
                <p id="edicao_usuario">                    
                    <g:message code="${flash.message}" />
                </p>
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Departamento</th>
                            <th>Local</th>
                            <th>Assunto</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>                                                                 
                            <th>IP</th>     
                            <th>Ações</th>     
                        </tr>
                    </thead>
                    <tbody>
                        <g:each status="i" var="item" in="${tickets}">
                        <tr id="l${i}">
                            <td>${item.id}</td>
                            <td>${item.dono.nome}</td>
                            <td>${item.dono.setor}</td>
                            <td>${item.dono.tipo}</td>
                            <td>${item.assunto}</td>
                            <td>${item.descricao}</td>
                            <td>${item.prioridade}</td>
                            <td>${item.abertura}</td>
                            <td>${item.ip}</td>
                            <td>                                                          
                                <a href="#perfilForm"><i class="fa fa-pencil edicao"  linha="l${i}"></i></a>                                                                    
                            </td>                            
                        </g:each>
                        
                    </tbody>
                </table>

                <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>

                <div id="perfilForm">
                    <g:form class="form-horizontal" url="[action:'mudar_perfil',controller:'usuario']" >                          
                        <div class="form-group">
                            <label class="col-lg-3 control-label">#</label>
                            <div class="input-group col-lg-6">                        
                                <g:textField name="form_id" class="form_id" class="form-control" readonly="readonly" />
                            </div>
                        </div>
                  
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Nome</label>
                            <div class="input-group col-lg-6">                        
                                <g:textField name="form_nome" class="form_nome"  class="form-control" readonly="readonly" />
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
                </div>

                <div id="excluirForm">
                    <g:form class="form-horizontal" url="[action:'excluir',controller:'usuario']" >                          
                        <div class="form-group">
                            <label class="col-lg-3 control-label">#</label>
                            <div class="input-group col-lg-6">                        
                                <g:textField name="ex_id" id="ex_id" class="form-control" readonly="readonly" />
                            </div>
                        </div>
                  
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Nome</label>
                            <div class="input-group col-lg-6">                        
                                <g:textField name="ex_nome" id="ex_nome"  class="form-control" readonly="readonly" />
                            </div>
                        </div>                

                        <p>Esta operação não pode ser desfeita!</p>
                        <div class="form-group">                            
                            <button type="submit" class="btn btn-danger navbar-btn ">Excluir Usuário</button> 
                        </div>            
                    </g:form>
                </div>
                <!-- aqui estava o codigo do alert do template -->

                <footer>
                    <!-- importando cabecalho -->
                    <g:render template="../rodape" />    
                    <!-- importando cabecalho -->    
                </footer>
            </div>
        </div>  
        <!-- JS -->                   
        <script src="<g:resource dir="js" file="usuarios.js"/>"></script>        
        <!-- JS -->    
    </body>
</html>
