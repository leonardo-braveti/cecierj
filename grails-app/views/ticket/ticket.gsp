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
    <link href="<g:resource dir="css" file="ticket.css" />" rel="stylesheet">
    <!-- BootStrap Validator CSS -->
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">
    
  </head>
  <body>
    <div id="completo">
      <div id="topo">          
          <img id="banner" src="<g:resource dir="images" file="banner_cecierj.png" />"/>
      </div>
      
      <div id="selecao">
        <button type="button" class="btn btn-default navbar-btn botao" tipo="centro">Centro</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="mangueira">Mangueira</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="museu">Museu</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="grafica">Gráfica</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="cederj">CEDERJ</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="ceja">CEJA</button>
        <button type="button" class="btn btn-default navbar-btn botao" tipo="tutoria">Tutoria</button>        
      </div>

      <div id="corpo">        
        
        <g:form name="registrationForm" class="form-horizontal" url="[action:'salvar',controller:'ticket']" >

          <div class="form-group">
            <label class="col-lg-3 control-label">Nome Completo</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="nome" placeholder="Entre com o seu nome">
            </div>
          </div>

          <div class="form-group" id="setor">
            <label class="col-lg-3 control-label">Departamento / Setor</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="setor" placeholder="Informe o setor de trabalho">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Email</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="email" placeholder="Entre com um email válido">
            </div>
          </div>

          <div class="form-group" id="funcao">
            <label class="col-lg-3 control-label">Função Exercida</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="funcao" placeholder="Informe a função exercida">
            </div>
          </div>
          
          <div class="form-group" id="local">
            <label class="col-lg-3 control-label">Local</label>
            <div class="col-lg-6">            
              
              <select id="local_ceja" name="local_ceja">
                  <option value="Angra dos Reis">Angra dos Reis<option>
              <select>
 
              <select id="local_cederj" name="local_cederj">
                  <option value="São Pedro da Aldeia">São Pedro da Aldeia<option>              
              </select>
              
              <select id="local_tutoria" name="local_tutoria">
                  <option value="UFRJ">UFRJ<option>              
              </select>
              
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Telefone</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="telefone" placeholder="Entre com o telefone">
            </div>
          </div>

          <div class="form-group">
            <label class="col-lg-3 control-label">Assunto</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="assunto" placeholder="Informe o assunto da solicitação">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Prioridade</label>
            <div class="col-lg-6">
                <select lass="form-control" name="prioridade"> 
                    <option value="normal">Normal</option>
                    <option value="alta">Alta</option>                    
                </select>              
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Descrição do Problema</label>
            <div class="col-lg-6">                
              <textarea rows="6" placeholder="Descreva o serviço a ser realizado" class="form-control" name="descricao"></textarea>
            </div>
          </div>

          <div class="form-group">
            <button type="submit" class="btn btn-primary navbar-btn ">Enviar</button>
            <button type="reset" class="btn btn-danger navbar-btn ">Limpar</button>
          </div>
          
          <input type="hidden" id="tipo" name="tipo">

        </g:form>
      </div>

      <div id="rodape">
        <img id="banner" src="<g:resource dir="images" file="rio.png" />"/>        
      </div>
    </div>





    <!-- BootStrap JS -->
    <script src="<g:resource dir="js" file="bootstrap.min.js"/>"></script>
    <!-- jQuery  -->
    <script src="<g:resource dir ="js" file="jquery-2.1.1.min.js"/>"></script>
    <!-- BootStrap Validator  -->
    <script src="<g:resource dir="js" file="bootstrapValidator.min.js"/>"></script>
    
    <script>
      
      $(document).ready(function(){
        
        $("#corpo").hide();
        $("#corpo #local").hide();
        $("#corpo #funcao").hide();

        $(".botao").click(function(){
          $("#corpo").show();
          
          var local = $(this).attr("tipo");               
          var classe = $(this).removeAttr("class");
          $(".botao").attr("class","btn btn-default navbar-btn botao");
          $(this).attr("class","btn btn-success navbar-btn botao");
          
          if(local == "ceja" || local == "cederj" || local == "tutoria"){
            $("#corpo #local").show();
            $("#corpo #funcao").show();
            $("#corpo #setor").hide();
          }
          else{
            $("#corpo #local").hide();
            $("#corpo #funcao").hide();
            $("#corpo #setor").show();
          }         
          
          if(local == "ceja"){            
            $("#local_cederj").hide();
            $("#local_tutoria").hide();
            $("#local_ceja").show();
          }
          
          else if(local == "cederj"){            
            $("#local_cederj").show();
            $("#local_ceja").hide();        
            $("#local_tutoria").hide();
          }
          else if(local == "tutoria"){            
            $("#local_tutoria").show();
            $("#local_cederj").hide();
            $("#local_ceja").hide();        
          }
          else{
            // Nada a fazer aqui
          }
          
          $("#tipo").val(local);          

        });
        

        $('#registrationForm').bootstrapValidator({
        
          feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
          },
          fields: {
            nome: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'O nome é obrigatório'
                    },                    
                    regexp: {
                        regexp: /^[a-zA-Z ]+$/,
                        message: 'O nome pode consister apenas de letras'
                    }                    
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'O email é obrigatório'
                    },
                    emailAddress: {
                        message: 'O endereço de email não é válido'
                    }
                }
            }            
          }
        });
      });
    </script>    
  </body>
</html>