<!doctype html>
<html lang="pt">
    <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->
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

                <h1 class="page-title">Ticket</h1>
                <ul class="breadcrumb">
                    <li><a>Consolidado</a></li>
                </ul>
            </div>
      
            <div class="main-content">
                <div class="panel panel-default">
                    <a href="#page-stats" class="panel-heading" data-toggle="collapse">Últimos Tickets Trabalhados</a>
                    <div id="page-stats" class="panel-collapse panel-body collapse in">        
                        <div class="row">          

                            <div class="col-md-3 col-sm-6">            
                                <div class="knob-container">
                                    <input class="knob" data-width="200" data-min="0" data-max="200" data-displayPrevious="true" value="100" data-fgColor="#92A3C2" data-readOnly=true;>
                                    <h3 class="text-muted text-center">Semana</h3>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="knob-container">
                                    <input class="knob" data-width="200" data-min="0" data-max="400" data-displayPrevious="true" value="190" data-fgColor="#92A3C2" data-readOnly=true;>
                                    <h3 class="text-muted text-center">Mês</h3>
                                </div>
                            </div>
 			    
                            <div class="col-md-3 col-sm-6">
                                <div class="knob-container">
                                    <input class="knob" data-width="200" data-min="0" data-max="2400" data-displayPrevious="true" value="1900" data-fgColor="#92A3C2" data-readOnly=true;>
                                    <h3 class="text-muted text-center">Semestre</h3>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="knob-container">
                                    <input class="knob" data-width="200" data-min="0" data-max="4800" data-displayPrevious="true" value="1840" data-fgColor="#92A3C2" data-readOnly=true;>
                                    <h3 class="text-muted text-center">Ano</h3>
                                </div>
                            </div>                       
                        </div>
                    </div>
                </div>
                <footer>
                    <!-- importando cabecalho -->
                    <g:render template="../rodape" />    
                    <!-- importando cabecalho -->    
                </footer>
            </div>
        </div>
        <!-- JS -->     
        <script src="<g:resource dir="lib/js" file="jquery.knob.js"/>"></script>                 
        <script src="<g:resource dir="js" file="home.js"/>"></script>        
        <!-- JS -->     
    </body>
</html>
