<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Departamento de Suporte Técnico em TI ::: Fundação CECIERJ</title>

    <!-- BootStrap CSS -->
    <link href="<g:resource dir="css" file="bootstrap.min.css" />" rel="stylesheet">
    <!-- Meu CSS -->
    <link href="<g:resource dir="css" file="index.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img id="banner" src="images/banner_cecierj.png"/>
      </div>

      <div id="mensagem">
        <p id="titulo"> Suporte Informática </p>
        <p id="texto"> 
          Para agilizar as solicitações e melhor atendê-lo, o Departamento de Suporte está disponibilizando o Cecierj Ticket. 
          Para cada pedido, é gerdo um  número único para que você possa monitorar o status da solicitação.
        </p> 
      </div>
      
      <div id="entrada">
        <p>
            Você já possui cadastro no sistema?
        </p>
        <button class="btn btn-primary navbar-btn botao" id="decideSim">Sim</button>
        <button class="btn btn-warning navbar-btn botao" id="decideNao">Não</button>
        
        <div id="selecao">
            <p>
              Onde você está?
            </p>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="centro">Centro</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="mangueira">Mangueira</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="museu">Museu</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="grafica">Gráfica</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="cederj">CEDERJ</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="ceja">CEJA</button>
            <button type="button" class="btn btn-default navbar-btn botaos" tipo="tutoria">Tutoria</button>        
        </div>
        
        <g:form name="formValidar" class="form-horizontal" url="[action:'validar',controller:'usuario']">
            <div class="form-group">
                <label class="col-lg-3 control-label">E-mail</label>
                <div class="col-lg-6">
                    <g:textField name="email" class="form-control"/>
                </div>
            </div>   
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Senha</label>
                <div class="col-lg-6">
                    <g:passwordField name="senha" class="form-control"/>
                </div>
            </div> 
            
            <div class="form-group">
                <button type="submit" class="btn btn-success navbar-btn ">Entrar</button> 
            </div>
        </g:form>
            
        <g:form name="formCadastrar" class="form-horizontal" url="[action:'cadastrar',controller:'usuario']">
            
            <!-- ***** inicio dos dados para configuração de usuario CENTRO, MANGUEIRA, SEDE e MUSEU ***** -->

            <div class="form-group">
                <label class="col-lg-3 control-label">Nome</label>
                <div class="col-lg-6">
                    <g:textField name="nome" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-lg-3 control-label">E-mail</label>
                <div class="col-lg-6">
                    <g:textField name="email" class="form-control"/>
                </div>
            </div>  
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Senha</label>
                <div class="col-lg-6">
                    <g:textField name="senha" class="form-control"/>
                </div>
            </div> 
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Repita a senha</label>
                <div class="col-lg-6">
                    <g:textField name="rsenha" class="form-control"/>
                </div>
            </div> 
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Telefone</label>
                <div class="col-lg-6">
                    <g:textField name="telefone" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group setor">
                <label class="col-lg-3 control-label">Departamento / Setor</label>
                <div class="col-lg-6">
                    <g:textField name="setor" class="form-control"/>
                </div>      
            </div>
            
            <div class="form-group andar">
                <label class="col-lg-3 control-label">Andar</label>
                <div class="col-lg-6">
                    <g:textField name="andar" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group sala">
                <label class="col-lg-3 control-label">Sala</label>
                <div class="col-lg-6">
                    <g:textField name="sala" class="form-control"/>
                </div>
            </div>
            
            <!-- ***** fim dos dados para configuração de usuario CENTRO, MANGUEIRA, SEDE e MUSEU ***** -->
                    
            <!-- ***** inicio dos dados para configuração de usuario CEDERJ, CEJA e TUTORIA ***** -->
            
            <div class="form-group funcao">
                <label class="col-lg-3 control-label">Função Exercida</label>
                <div class="col-lg-6">
                    <g:textField name="sala" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group local">
                <label class="col-lg-3 control-label">Local</label>
                <div class="col-lg-6">
                    <select id="local_ceja" name="local_ceja">
                        <option value="Angra dos Reis">Angra dos Reis<option>              
                    <select>
                </div>
            </div>
                    
                    
            <!-- ***** fim dos dados para configuração de usuario CEDERJ, CEJA e TUTORIA ***** -->
        </g:form>
            
            
      </div>

      <div id="rodape">
        <p>Desenvolvido pelo Departamento de Suporte </p>        
      </div>      
    </div>
    
    <!-- BootStrap JS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery  -->
    <script src="js/jquery-2.1.1.min.js"></script>
    
    
    <script>
        $("document").ready(function(){
            $("#formValidar").hide();
            $("#formCadastrar").hide();
            $("#selecao").hide();
            
            $(".botao").click(function(){
                var decisao = $(this).attr("id")
                if(decisao == "decideSim"){
                    $("#selecao").hide();
                }
                else{
                    $("#selecao").show();
                }
            });
            
            $(".botaos").click(function(){                
                var local = $(this).attr("tipo");
                if(local == "ceja" || local == "cederj" || local == "tutoria"){
                    $(".setor").hide();                    
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").show();
                    $(".funcao").show();
                    $("#formCadasrar").show();
                }
                else if(local == "centro"){       
                    $(".setor").show();                    
                    $(".andar").show();
                    $(".sala").show();
                    $(".local").hide();
                    $(".funcao").hide(); 
                    $("#formCadastrar").show();                    
                }   
                else if(local == "museu" || local == "mangueira"){
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").hide();
                    $(".funcao").hide();
                    $(".setor").show(); 
                    $("#formCadastrar").show();   
                }
                else{
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").hide();
                    $(".funcao").hide();
                    $(".setor").hide(); 
                    $("#formCadastrar").show();                  
                }
            });
            
            function limparCampos(){
                $("#").val("");
            }
        });      
    </script>    
  </body>
</html>