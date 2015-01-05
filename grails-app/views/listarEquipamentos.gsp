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
                            <th>Etiqueta</th>                            
                            <th>Hostname</th>
                            <th>IP</th>                                                        
                            <th></th>     
                        </tr>
                    </thead>
                    <tbody>
                        <g:each status="i" var="item" in="${equipamentos}">
                        <tr id="l${i}">
                            <td>${item.id}</td>
                            <td>${item.etiqueta}</td>
                            <td>${item.hostname}</td>
                            <td>${item.ip}</td>                            
                            <td>                                                        
                                <g:link controller="equipamento"  action="excluir" id="${item.id}">
                                    <i class="fa fa-trash-o editar"  linha="l${i}"></i>
                                </g:link>                                                                    
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

                
                <!-- aqui estava o codigo do alert do template -->

                <footer>
                    <!-- importando cabecalho -->
                    <g:render template="../rodape" />    
                    <!-- importando cabecalho -->    
                </footer>
            </div>
        </div>  
        <!-- JS -->                   
        <script src="<g:resource dir="js" file="listarEquipamentos.js"/>"></script>        
        <!-- JS -->    
    </body>
</html>
