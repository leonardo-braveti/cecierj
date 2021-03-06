<!doctype html>
<html lang="pt">
     <head>
        <!-- importando cabecalho -->
        <g:render template="../head" />    
        <!-- importando cabecalho -->

        <!-- JS -->        
        <script src="<g:resource dir="lib/js" file="bootstrapValidator.min.js"/>"></script>        
        <!-- JS -->

        <!-- CSS -->
        <link href="<g:resource dir="lib/css" file="bootstrapValidator.min.css" />" rel="stylesheet">
        <link href="<g:resource dir="css/admin" file="login.css" />" rel="stylesheet">
        <!-- CSS -->        
    </head>

    <body class=" theme-blue">
        
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Aircraft</span></a></div>

            <div class="navbar-collapse collapse" style="height: 1px;">

            </div>
        </div>
        

        <div class="dialog">
            <div class="panel panel-default">
                <p class="panel-heading no-collapse">Novo Usuário</p>
                <div class="panel-body">
                    <g:form name="myForm" url="[action:'cadastrar',controller:'usuario']">                    
                        <div class="form-group">
                            <label>Nome Completo</label>
                            <input type="text" id="nome" name="nome" class="form-control span12">
                        </div>
                        <div class="form-group">
                            <label>E-mail</label>
                            <input type="text" id="email" name="email" class="form-control span12">
                        </div>
                    
                        <div class="form-group">
                            <label>Telefone</label>
                            <input type="text" id="telefone" name="telefone" class="form-control span12">
                        </div>
                        
                        <div class="form-group">
                            <label>Celular</label>
                            <input type="text" id="celular" name="celular" class="form-control span12">
                        </div>
                        
                        <div class="form-group" id="unidade">
                            <label>Unidade</label>                            
                            <select name="unidade">
                                <option value=""></option>
                                <g:each in="${unidade}">
                                    <option value="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>
                        </div>                                
                        
                        <div class="form-group" id="localidade">
                            <label>Localidade</label>                            
                            <select name="localidade" id="selLocalidade">
                                <option value="null"> </option>
                                <g:each in="${localidade}">
                                    <option value="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>
                        </div>                                                                                            
                        
                        <div class="form-group" id="setor">
                            <label>Setor</label>
                            <br>
                            <select name="setor">
                                <option value=""> </option>
                                <g:each in="${setor}">
                                    <option value="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>                            
                        </div>
                        
                        <div class="form-group" id="universidade">
                            <label>Universidade</label>
                            <br>
                            <select name="universidade">
                                <option value=""> </option>
                                <g:each in="${universidade}">
                                    <option value="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>                            
                        </div>
                        
                        <div class="form-group" id="curso">
                            <label>Curso</label>
                            <br>
                            <select name="curso">
                                <option value=""> </option>
                                <g:each in="${curso}">
                                    <option value="${it.nome}">${it.nome}</option>
                                </g:each>
                            </select>                            
                        </div>
                
                        <div class="form-group">
                            <label>Senha</label>
                            <input type="password" name="senha" class="form-control span12">
                        </div>  
                        
                        <div class="form-group">
                            <label>Confirmar senha</label>
                            <input type="password" name="rsenha" class="form-control span12">
                        </div> 
                    
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary pull-right" value="Cadastrar Usuario">
                        </div>
                    
                        <div class="clearfix"></div>
                    </g:form>
                </div>
            </div>            
        </div>
        <!-- JS -->  
        <script src="<g:resource dir="js" file="cadastro.js"/>"></script>        
        <!-- JS -->  
    </body>
</html>
