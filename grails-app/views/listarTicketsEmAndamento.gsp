<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
        <link rel="stylesheet" href="<g:resource dir='css' file='andamento.css'/>"/>
        <link rel="stylesheet" href="<g:resource dir='lib/css' file='jquery.fancybox.css'/>"/>
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
                  <li><a>Em andamento</a></li>
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
                <p id="mensagem_andamento">                    
                    <g:message code="${flash.message}" />                    
                </p>
                <br>
                <table id="listagem" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Criador</th>
                            <th>Unidade</th>
                            <th>Localidade / Universidade</th>
                            <th>Setor</th>
                            <th>Curso</th>
                            <th>Problema</th>
                            <th>Descrição</th>
                            <th>Prioridade</th>
                            <th>Abertura</th>                                                                 
                            <th>IP</th>     
                            <th>Responsável</th>    
                            <th></th>     
                        </tr>
                    </thead>
                    <tbody>
                        <g:each status="i" var="item" in="${tickets}">
                        <tr id="l${i}">
                            <td>${item.id}</td>
                            <td>${item.dono.nome}</td>
                            <td>${item.unidade}</td>
                            <td>${item.localidade}${item.universidade}</td>
                            <td>${item.setor}</td>
                            <td>${item.curso}</td>
                            <td>${item.problema}</td>
                            <td>${item.descricao}</td>
                            <td>${item.prioridade}</td>
                            <td>${item.abertura}</td>
                            <td>${item.ip}</td>
                            <td>${item.responsavel.nome}</td>
                            <td>                                                              
                                <a href="#atrelarForm"><i class="fa fa-pencil editar"  linha="l${i}"></i></a>                                                                    
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

                <div id="atrelarForm" class="centralizar" >
                    <br><br><br>                                      
                    <table border=1 id="tabela_dados" class="table">
                        <thead>
                            <th  class="estiloTituloCelulas"colspan="8">DADOS DO TICKET</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="estiloNomeCelula">Identificador</td>
                                <td id="td_id" class="estiloConteudoCelula"></td>
                                <td class="estiloNomeCelula">Data de criação</td>
                                <td id="td_data"  colspan="2" class="estiloConteudoCelula"></td>
                                <td class="estiloNomeCelula">Endereço IP</td>                                                        
                                <td id="td_ip" class="estiloConteudoCelula"></td>
                            </tr>
                            <tr>
                                <td class="estiloNomeCelula">Criador</td>
                                <td id="td_nome" colspan="6" class="estiloConteudoCelula"></td>                                
                            </tr>
                            <tr>
                                <td class="estiloNomeCelula">Responsável</td>
                                <td id="td_responsavel" colspan="6" class="estiloConteudoCelula"></td>
                            </tr>
                            <tr>
                                <td class="estiloNomeCelula">Unidade</td>
                                <td id="td_unidade" class="estiloConteudoCelula"></td>                                
                                <td class="estiloNomeCelula">Localidade / Universidade</td>
                                <td id="td_localidade" class="estiloConteudoCelula"></td>  
                                <!--<td id="td_disciplina" class="estiloConteudoCelula"></td>  -->

                                <td class="estiloNomeCelula mostraSetor">Setor</td>
                                <td id="td_setor" class="estiloConteudoCelula mostraSetor"></td>    
                                
                                <td class="estiloNomeCelula mostraCurso">Curso</td>
                                <td id="td_curso" class="estiloConteudoCelula mostraCurso"></td> 
                            </tr>
                            
                            <tr>
                                <td class="estiloNomeCelula">Problema</td>                                
                                <td id="td_problema"  colspan="2" class="estiloConteudoCelula"></td>    
                                <td class="estiloNomeCelula">Prioridade</td>
                                <td id="td_prioridade" colspan="3" class="estiloConteudoCelula"></td>
                            </tr>
                            <tr>
                                <td class="estiloNomeCelula">Descrição</td>
                                <td id="td_descricao" colspan="7" class="estiloConteudoCelula"></td>
                            </tr>               
                            <tr>
                               
                            </tr>   
                        <tbody>
                    </table>
                    <br>
                    <g:form id="form_principal" class="form-horizontal" url="[action:'encerrarTicket',controller:'ticket']" >                          
                        <g:hiddenField name="id" id="id" class="form-control" readonly="readonly" />
                        <g:hiddenField name="data" id="data"  class="form-control" readonly="readonly" />        
                        <g:hiddenField name="nome" class="nome"  class="form-control" readonly="readonly" />    
                        <g:hiddenField name="unidade" id="unidade"  class="form-control" readonly="readonly" />
                        <g:hiddenField name="local" id="localidade"  class="form-control" readonly="readonly" />
                        <g:hiddenField name="problema" id="problema"  class="form-control" readonly="readonly" />
                        <g:hiddenField name="descricao" id="descricao"  class="form-control" readonly="readonly" />
                        <g:hiddenField name="prioridade" id="prioridade"  class="form-control" readonly="readonly" />
                        <g:hiddenField name="responsavel" id="responsavel"  class="form-control" readonly="readonly" />
                        
                        <p> Vincular computador a este ticket? </p>
                        
                        <div class="form-group">                            
                            <label class="col-lg-3 control-label"></label>
                            <div class="col-lg-6">                                    
                                <select id="sel_tipo">                                    
                                        <option></option>       
                                        <option>Sim</option>                                    
                                        <option>Não</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group centralizar" id="nome_maquina">
                            <label class="col-lg-6 control-label">Selecione o etiqueta</label>
                            <div class="col-lg-1">                        
                                <select name="etiqueta">
                                    <g:each in="${equipamentos}">
                                        <option value="${it.etiqueta}">${it.etiqueta}</option>
                                    </g:each>
                                </select>                                    
                            </div>                                          
                        </div>   
                        
                        <div class="form-group centralizar" >                                                                     
                            <button class="btn btn-primary navbar-btn" id="atualizar_ticket">Atualizar Ticket</button>                            
                            <button class="btn btn-primary navbar-btn" id="encerrar_ticket">Encerrar Ticket</button>                            
                        </div>   
                        
                    </g:form>
                    
                    
                    <div class="form-group centralizar">
                        <a id="inline" href="#nova_tarefa">
                            <button class="btn btn-success navbar-btn" id="incluir_tarefa">Incluir Tarefa</button>
                        </a>                                                    
                    </div>
                    
                    <div id="nova_tarefa" style="display:none">
                       <g:render template="../fancy_registrar" />
                    </div>
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
        <script src="<g:resource dir="js" file="andamento.js"/>"></script>       
        <script src="<g:resource dir="lib/js" file="jquery.fancybox.js"/>"></script> 
        <!-- JS -->    
    </body>
</html>
