  <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">               
                <a class="" href="index.html">
                    <span class="navbar-brand">
                        <span class="fa fa-paper-plane"></span>
                        Departamento de Suporte em Informática
                    </span>
                </a>
            </div>

            <div class="navbar-collapse collapse" style="height: 1px;">
                <ul id="main-menu" class="nav navbar-nav navbar-right">
                    <li class="dropdown hidden-xs">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> ${session.espec.nome}
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <g:link controller="usuario" action="dados">
                                    Meus Dados    
                                </g:link>
                            </li>                            
                            <li class="divider"></li>                            
                            <li>
                                <g:link controller="usuario" action="sair" tabindex="-1">
                                    Sair    
                                </g:link>
                            </li>                                                        
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    