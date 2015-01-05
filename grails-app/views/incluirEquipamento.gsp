<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
        <link rel="stylesheet" href="<g:resource dir='css' file='incluirEquipamento.css'/>"/>
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

                <h1 class="page-title">Computadores</h1>
                <ul class="breadcrumb">
                    <li><a>Incluir computador</a></li>
                </ul>
            </div>
      
            <div class="main-content">
                 <p id="mensagem_ticket">                    
                    <g:message code="${flash.message}" />
                </p>
                <br>
                <g:form name="registrationForm" class="form-horizontal" url="[action:'salvar',controller:'equipamento']" >
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Etiqueta</label>
                        <div class="col-lg-5">              
                            <input type="text" class="form-control" name="etiqueta" placeholder="Informe a etiqueta do equipamento">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Hostname</label>
                        <div class="col-lg-5">              
                            <input type="text" class="form-control" name="hostname" placeholder="Informe o hostname do equipamento">
                        </div>
                    </div>
          
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Endereço IP</label>
                        <div class="col-lg-5">              
                            <input type="text" class="form-control" name="ip" placeholder="Informe o IP fixo caso esteja em uso">
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
        <script src="<g:resource dir="js" file="novo_ticket.js"/>"></script>        
        <!-- JS -->     
    </body>
</html>
