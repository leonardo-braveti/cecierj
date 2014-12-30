<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
        <link rel="stylesheet" href="<g:resource dir='css' file='abertos.css'/>"/>
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
                  <!-- importando estatisticas -->
                <g:render template="../estatisticas" />    
                <!-- importando cabecalho -->    
                
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
                <p id="mensagem_atrelado">                    
                    <g:message code="${flash.message}" />
                </p>
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>                            
                            <th>Unidade</th>
                            <th>Localidade</th>                            
                            <th>Problema</th>
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
                            <td>${item.dono.unidade}</td>
                            <td>${item.dono.localidade}</td>
                            <td>${item.problema}</td>
                            <td>${item.descricao}</td>
                            <td>${item.prioridade}</td>
                            <td>${item.abertura}</td>
                            <td>${item.ip}</td>
                            <td>                                                        
                                <a href="#atrelarForm"><i class="fa fa-pencil editar"  linha="l${i}"></i></a>                                                                    
                            </td>                            
                        </g:each>
                        
                    </tbody>
                </table>

                <!--<ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>-->

                <div id="atrelarForm" class="centralizar">
                    <br>
                    <p> Utilize este formulário para vincular um responsável a este ticket. </p>
                    <br>
                    <g:form class="form-horizontal" url="[action:'atribuirTecnico',controller:'ticket']" >                          
                        <div class="form-group col-lg-10 ">
                            <label class="col-lg-4 control-label">#</label>
                            <div class="col-lg-1">                        
                                <g:textField name="id" id="id"  class="form-control" readonly="readonly" />
                            </div>
                            <div class="conjunto">
                                <label class="col-lg-2 control-label">Data</label>
                                <div class="col-lg-4">                        
                                    <g:textField name="data" id="data"  class="form-control" readonly="readonly" />
                                </div>
                            </div>
                        </div>
                  
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Nome</label>
                            <div class="col-lg-6">                        
                                <g:textField name="nome" class="nome"  class="form-control" readonly="readonly" />
                            </div>
                        </div>
                
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Departamento</label>
                            <div class="col-lg-6">                        
                                <g:textField name="departamento" id="departamento"  class="form-control" readonly="readonly" />
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Local</label>
                            <div class="col-lg-6">                        
                                <g:textField name="local" id="local"  class="form-control" readonly="readonly" />
                            </div>                            
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Assunto</label>
                            <div class="col-lg-6">                        
                                <g:textField name="assunto" id="assunto"  class="form-control" readonly="readonly" />
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <label class="col-lg-3 control-label">Descrição</label>
                            <div class="col-lg-6">                        
                                <g:textArea name="descricao" id="descricao"  class="form-control" readonly="readonly" />
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Prioridade</label>
                            <div class="col-lg-6">                        
                                <g:textField name="prioridade" id="prioridade"  class="form-control" readonly="readonly" />
                            </div>                            
                        </div>
                                        
                        <p> Quem será o responsável pelo ticket? </p>
                        
                        <div class="form-group">                            
                            <label class="col-lg-3 control-label"></label>
                            <div class="col-lg-6">                                    
                                <select id="sel_tipo">                                    
                                        <option></option>       
                                        <option>Técnico</option>                                    
                                        <option>Analista</option>
                                </select>
                            </div>
                        </div>
                        
                        <div id="tecnico" class="form-group">
                            <label class="col-lg-3 control-label">Técnicos do setor</label>
                            <div class="input-group col-lg-6">                                    
                                <select id="nome_tecnico" class="grupo_tecnico">
                                    <option></option>       
                                    <g:each var="t" in="${tecnicos}">
                                        <option value="${t.nome}">${t.nome}</option>
                                    </g:each>
                                </select>
                            </div>
                        </div>
                        
                        <div id="analista" class="form-group">
                            <label class="col-lg-3 control-label">Analistas do setor</label>
                            <div class="input-group col-lg-6">                        
                                <select id="nome_analista" class="grupo_analista">
                                    <option></option>       
                                    <g:each var="a" in="${analistas}">
                                        <option value="${a.nome}">${a.nome}</option>
                                    </g:each>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group centralizar">
                            <input type="hidden" id="responsavel" name="responsavel">
                            <button type="submit" class="btn btn-success navbar-btn ">Salvar</button>                        
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
        <script src="<g:resource dir="js" file="abertos.js"/>"></script>        
        <!-- JS -->    
    </body>
</html>
