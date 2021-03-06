            <ul> <!-- abre o <ul> interno de sidebar-nav -->
                <li>
                    <a href="#" data-target=".dashboard-menu" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-fw fa-dashboard"></i> Tickets
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="dashboard-menu nav nav-list collapse">
                        <li>
                            <g:link controller="navegar" action="consolidado">
                                <span class="fa fa-caret-right"></span> Consolidado
                            </g:link>
                        </li>
                        <li>
                            <g:link controller="navegar" action="criarTicket">
                                <span class="fa fa-caret-right"></span> Criar
                            </g:link>
                        </li>
                        <li>
                            <g:link controller="navegar" action="listarTicketsAbertos">
                                <span class="fa fa-caret-right"></span> Abertos
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="navegar" action="listarTicketsEmAndamento">
                                <span class="fa fa-caret-right"></span> Em andamento
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="navegar" action="pesquisarTickets">
                                <span class="fa fa-caret-right"></span> Pesquisar
                            </g:link>                            
                        </li>                                    
                    </ul>
                </li> 

                <li>
                    <a href="#" data-target=".usuarios-menu" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-fw fa fa-users"></i> Usuários
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>

                <li>
                    <ul class="usuarios-menu nav nav-list collapse">                
                        <li >
                            <g:link controller="navegar" action="listarUsuarios">
                                <span class="fa fa-caret-right"></span> Gerenciar
                            </g:link>
                        </li>
                        <li>
                            <g:link controller="usuario" action="pesquisarUsuarios">
                                <span class="fa fa-caret-right"></span> Pesquisar
                            </g:link>                            
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#" data-target=".agendamento-menu" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-fw fa-fighter-jet"></i> Agendamento
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>
                
                <li>
                    <ul class="agendamento-menu nav nav-list collapse">
                        <li>
                            <g:link controller="agendamento" action="visita">
                                <span class="fa fa-caret-right"></span> Definir visitas
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="agendamento" action="relatorio">
                                <span class="fa fa-caret-right"></span> Emitir relatórios
                            </g:link>                            
                        </li>            
                    </ul>
                </li>

                <li>
                    <a href="#" data-target=".estoque-menu" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-database"></i> Estoque
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="estoque-menu nav nav-list collapse">
                        <li>
                            <g:link controller="estoque" action="consultar">
                                <span class="fa fa-caret-right"></span> Consultar
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="estoque" action="entrada">
                                <span class="fa fa-caret-right"></span> Dar entrada
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="estoque" action="saida">
                                <span class="fa fa-caret-right"></span> Dar saída
                            </g:link>                            
                        </li>
                    </ul>
                </li>
            
                <li>
                    <a href="#" data-target=".dados-computador" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-desktop"></i>Equipamentos
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="dados-computador nav nav-list collapse">
                        <li>
                            <g:link controller="navegar" action="incluirEquipamento">
                                <span class="fa fa-caret-right"></span> Incluir
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="navegar" action="listarEquipamentos">
                                <span class="fa fa-caret-right"></span> Listar
                            </g:link>                            
                        </li>                                                
                    </ul>
                </li>  

	        <li>
                    <a href="#" data-target=".dados-menu" class="nav-header collapsed" data-toggle="collapse">
                        <i class="fa fa-book"></i>Meus dados 
                        <i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="dados-menu nav nav-list collapse">
                        <li>
                            <g:link controller="dados" action="dados">
                                <span class="fa fa-caret-right"></span> Trocar dados
                            </g:link>                            
                        </li>
                        <li>
                            <g:link controller="dados" action="senha">
                                <span class="fa fa-caret-right"></span> Trocar senha
                            </g:link>                            
                        </li>                                                
                    </ul>
                </li>  
    
            </ul> <!-- fecha o <ul> interno de sidebar-nav -->