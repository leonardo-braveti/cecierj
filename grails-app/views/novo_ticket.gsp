<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
        <link rel="stylesheet" href="<g:resource dir='css' file='novo_ticket.css'/>"/>
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
                <div class="stats">
                    <p class="stat"><span class="label label-info">5</span> Tickets abertos</p>
                    <p class="stat"><span class="label label-success">27</span> Tickets em andamento</p>
                    <p class="stat"><span class="label label-danger">15</span> Total de tickets</p>
                </div>

                <h1 class="page-title">Ticket</h1>
                <ul class="breadcrumb">
                    <li><a>Criar novo ticket</a></li>
                </ul>
            </div>
      
            <div class="main-content">
                 <p id="mensagem_ticket">                    
                    <g:message code="${flash.message}" />
                </p>
                <br>
                <g:form name="registrationForm" class="form-horizontal" url="[action:'salvar',controller:'ticket']" >
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Problema</label>
                        <div class="col-lg-6">
                            <select name=problema>
                                <g:each in="${problema}">
                                    <option name="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>                            
                        </div>
                    </div>
          
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Descrição do problema</label>
                        <div class="col-lg-6">                
                            <textarea rows="6" placeholder="Descreva o serviço a ser realizado" class="form-control" name="descricao"></textarea>
                        </div>
                    </div>
                    
                  
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Prioridade</label>
                        <div class="col-lg-1">
                            <select name="prioridade"> 
                                <option value="normal">Normal</option>
                                <option value="alta">Alta</option>                    
                            </select>              
                        </div>
                        <label class="col-lg-3 control-label">Seu endereço IP</label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" name="ip" value="${ip}" readonly placeholder="Informe o assunto da solicitação">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Unidade</label>
                        <div class="col-lg-1">
                             <select name=unidade>
                                <g:each in="${unidade}">
                                    <option name="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>                 
                        </div>
                        <label class="col-lg-3 control-label">Localidade</label>
                        <div class="col-lg-2">
                            <select name=localidade>
                                <g:each in="${localidade}">
                                    <option name="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>     
                        </div>
                    </div>

                    <div class="form-group centralizar">
                        <button type="submit" class="btn btn-success navbar-btn ">Enviar</button>
                        <button type="reset" class="btn btn-warning navbar-btn ">Limpar</button>
                    </div>
                    
                </g:form>
            </div>
            
            <footer>
                <!-- importando cabecalho -->
                <g:render template="../rodape" />    
                <!-- importando cabecalho -->    
            </footer>
        </div>
        
        <!-- JS -->     
        <script src="<g:resource dir="lib/js" file="jquery.knob.js"/>"></script>                 
        <script src="<g:resource dir="js" file="home.js"/>"></script>        
        <!-- JS -->     
    </body>
</html>
