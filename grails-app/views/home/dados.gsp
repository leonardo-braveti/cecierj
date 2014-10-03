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
    <link href="<g:resource dir="css/home" file="index.css" />" rel="stylesheet">
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img id="banner" src="<g:resource dir="images" file="banner_cecierj.png" />"/>
      </div>

      <div id="mensagem">
        <p id="titulo"> Departamento de Suporte Técnico em Informática </p>
        <p id="texto"> 
            <g:render template="menu" /> 
        </p>
      </div>
      
      
      <div id="entrada">
        
        
        <p id="login_invalido">
            <g:message code="${flash.message}" />
        </p>
        <!--<div id="selecao">
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
        </div>-->
        
        <br>
        <g:form name="formCadastrar" class="form-horizontal" url="[action:'atualizar',controller:'usuario']">
            
            <!-- ***** inicio dos dados para configuração de usuario CENTRO, MANGUEIRA, SEDE e MUSEU ***** -->

            <div class="form-group">
                <label class="col-lg-3 control-label">Nome</label>
                <div class="col-lg-6">
                    <g:textField name="nome" class="form-control" value="${session.user.nome}" />
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-lg-3 control-label">E-mail</label>
                <div class="col-lg-6">
                    <g:textField name="email" class="form-control" value="${session.user.email}"/>
                </div>
            </div>  
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Senha</label>
                <div class="col-lg-6">
                    <g:passwordField name="senha" class="form-control"/>
                </div>
            </div> 
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Repita a senha</label>
                <div class="col-lg-6">
                    <g:passwordField name="rsenha" class="form-control"/>
                </div>
            </div> 
            
            <div class="form-group">
                <label class="col-lg-3 control-label">Telefone</label>
                <div class="col-lg-6">
                    <g:textField name="telefone" class="form-control" value="${session.user.telefone}"/>
                </div>
            </div>
            
            <div class="form-group setor">
                <label class="col-lg-3 control-label">Departamento / Setor</label>
                <div class="col-lg-6">
                    <g:textField name="setor" class="form-control" value="${session.user.setor}"/>
                </div>      
            </div>
            
            <div class="form-group andar">
                <label class="col-lg-3 control-label">Andar</label>
                <div class="col-lg-6">                    
                    <select name="andar" id="andar">
                        <option ></option>   
                        <option value="15" selected>15</option>              
                        <option value="16">16</option>              
                    </select>      

                </div>
            </div>
            
            <div class="form-group sala">
                <label class="col-lg-3 control-label">Sala</label>
                <div class="col-lg-6">
                    <select name="sala" id="sala" >
                        <option class="op_vazio" selected></option> 
                        <g:each var="i" in="${(1..<25)}">
                            <option value=${i}>${i}</option> 
                       </g:each>
                    </select>                     
                    
                </div>
            </div>
            
            <!-- ***** fim dos dados para configuração de usuario CENTRO, MANGUEIRA, SEDE e MUSEU ***** -->
                    
            <!-- ***** inicio dos dados para configuração de usuario CEDERJ, CEJA e TUTORIA ***** -->
            
            <div class="form-group funcao">
                <label class="col-lg-3 control-label">Função Exercida</label>
                <div class="col-lg-6">
                    <g:textField name="funcao" class="form-control" value="${session.user.funcao}" />
                </div>
            </div>
            
            <div class="form-group local">
                <label class="col-lg-3 control-label">Local</label>
                <div class="col-lg-6">
                    <select id="local" name="local" >
                        <option class="local_cederj" value="Alemão">Alemão</option>    
                        <option value="Angra dos Reis">Angra dos Reis</option>         
                        <option class="local_ceja" value="Aperibé">Aperibé</option>          
                        <option class="local_ceja" value="Araruama">Araruama</option>          
                        <option class="local_ceja" value="Arrail do Cabo">Arrail do Cabo</option>              
                        <option value="Barra do Piraí">Barra do Piraí</option>
                        <option class="local_ceja" value="Barra Mansa">Barra Mansa</option>
                        <option value="Belford Roxo">Belford Roxo</option>
                        <option class="local_ceja" value="Bom Jardim">Bom Jardim</option>              
                        <option value="Bom Jesus do Itapaboana">Bom Jesus do Itapaboana</option>
                        <option class="local_ceja" value="Cambuci">Cambuci</option>              
                        <option value="Campo Grande">Campo Grande</option>
                        <option class="local_ceja" value="Campos dos Goytacazes">Campos dos Goytacazes</option>
                        <option value="Cantagalo">Cantagalo</option>    
                        <option class="local_ceja" value="Carmo">Carmo</option>    
                        <option class="local_ceja" value="Casimiro de Abreu">Casimiro de Abreu</option>    
                        <option class="local_ceja" value="Conceição de Macabu">Conceição de Macabu</option>              
                        <option class="local_ceja" value="Copacana">Copacabana</option>    
                        <option class="local_ceja" value="Copacana">Cordeiro</option>    
                        <option class="local_ceja" value="Duas Barras">Duas Barras</option>    
                        <option value="Duque de Caxias">Duque de Caxias</option>    
                        <option class="local_ceja" value="Conceição de Macabu">Conceição de Macabu</option>              
                        <option class="local_ceja" value="Engenheiro Paulo de Frontin">Engenheiro Paulo de Frontin</option> 
                        <option class="local_ceja" value="Ilha do Governador">Ilha do Governador</option>      
                        <option value="Itaguaí">Itaguaí</option>
                        <option class="local_ceja" value="Italva">Italva</option>                                                                  
                        <option value="Itaocara">Itaocara</option>        
                        <option class="local_cederj" value="Itaperuna">Itaperuna</option>    
                        <option class="local_ceja"  value="Jacarezinho">Jacarezinho</option> 
                        <option class="local_cederj" value="Macaé">Macaé</option>        
                        <option class="local_ceja" value="Madureira">Madureira</option>                                
                        <option class="local_cederj" value="Magé">Magé</option>        
                        <option class="local_cederj" value="Maracanã">Maracanã</option>        
                        <option class="local_ceja" value="Maricá">Maricá</option>                                
                        <option class="local_cederj" value="Miguel Pereira">Miguel Pereira</option>
                        <option class="local_ceja" value="Miracema">Miracema</option>
                        <option value="Natividade">Natividade</option>
                        <option value="Niterói">Niterói</option>
                        <option value="Nova Friburgo">Nova Friburgo</option>
                        <option class="local_cederj" value="Nova Iguaçu">Nova Iguaçu</option>
                        <option class="local_ceja" value="Paciência">Paciência</option>
                        <option class="local_cederj" value="Paracambi">Paracambi</option>
                        <option class="local_ceja" value="Parati">Parati</option>
                        <option value="Petrópolis">Petrópolis</option>
                        <option class="local_ceja" value="Penha">Penha</option>
                        <option class="local_ceja" value="Piabetá">Piabetá</option>
                        <option class="local_cederj" value="Pirai">Pirai</option>
                        <option class="local_ceja" value="Porciúncula">Porciúncula</option>
                        <option class="local_cederj" value="Quatis">Quatis</option>
                        <option class="local_ceja" value="Quissamã">Quissamã</option>
                        <option value="Resende">Resende</option>
                        <option value="Rio Bonito">Rio Bonito</option>
                        <option value="Rio das Flores">Rio das Flores</option>
                        <option class="local_ceja" value="Rio das Ostras">Rio das Flores</option>
                        <option value="Rocinha">Rocinha</option>
                        <option value="Santa Maria Madalena">Santa Maria Madalena</option>
                        <option class="local_ceja"  value="São Cristovão">São Cristovão</option>
                        <option value="São Fidélis">São Fidélis</option>
                        <option class="local_cederj" value="São Francisco do Itabapoana">São Franciso do Itabapoana</option>                        
                        <option value="São Gonçalo">São Gonçalo</option>
                        <option class="local_ceja" value="São João de Meriti">São João de Meriti</option>
                        <option value="São Pedro da Aldeia">São Pedro da Aldeia</option>
                        <option class="local_ceja" value="Santo Antonio de Padua">Santo Antonio de Padua</option>
                        <option class="local_ceja"  value="Sapucaia">Sapucaia</option>
                        <option class="local_cederj"  value="Saquarema">Saquarema</option>
                        <option class="local_ceja"  value="Seropédica">Seropédica</option>
                        <option class="local_ceja"  value="Sumidouro">Sumidouro</option>
                        <option class="local_ceja" value="Teresópolis">Teresópolis</option>
                        <option value="Três Rios">Três Rios</option>                        
                        <option class="local_tutoria" value="UERJ">UERJ</option>
                        <option class="local_tutoria" value="UNIRIO">UNIRIO</option>
                        <option class="local_tutoria" value="UENF">UENF</option>
                        <option class="local_tutoria" value="UFF">UFF</option>
                        <option class="local_tutoria" value="UFRJ">UFRJ</option>
                        <option class="local_tutoria" value="UFRRJ">UFRRJ</option>                        
                        <option class="local_ceja" value="Urca">Urca</option>
                        <option class="local_ceja" value="Valença">Valença</option>
                        <option class="local_ceja" value="Vassouras">Vassouras</option>
                        <option class="local_ceja" value="Vila Isabel">Vila Isabel</option>
                        <option value="Volta Redonda">Volta Redonda</option>
                    <select>
                </div>
            </div>
            
            <input type="hidden" id="tipo" name="tipo" value="${session.user.tipo}">
                    
            <div class="form-group">
                <button type="submit" class="btn btn-success navbar-btn ">Atualizar</button> 
            </div>
        </g:form>
              
              
            <!-- ******** fim do formulario de cadastro  ******* -->
              
            
            
      </div>

      <div id="rodape">
        <p>Desenvolvido pelo Departamento de Suporte Técnico em Informática </p>        
      </div>      
    </div>
    
    
    <!-- jQuery  -->
    <script src="<g:resource dir="js" file="jquery-2.1.1.min.js"/>"></script>
    <!-- BootStrap JS -->    
    <script src="<g:resource dir="js" file="bootstrap.min.js"/>"></script>
    
    <script src="<g:resource dir="js" file="bootstrapValidator.min.js"/>"></script>
    
    <script src="<g:resource dir="js/dados" file="dados.js"/>"></script>
    
    <script>
        $("document").ready(function(){
            tipo  = "${session.user.tipo}";
                        
            if(tipo == "cederj"){
                $(".local_ceja").remove();
                $(".local_tutoria").remove();                 
            }
            else if(tipo == "ceja"){
            
            }
            else if(tipo == "tutoria"){
            
            }
            else if(tipo == "centro"){
                $(".local").remove();
                $(".funcao").remove(); 
                $("#andar option").each(function(){                    
                    if($(this).val() == ${session.user.andar}){
                        $(this).attr("selected", "selected");
                    }
                });
                $("#sala option").each(function(){                    
                    if($(this).val() == ${session.user.sala}){
                        $(this).attr("selected", "selected");
                    }
                });                
            }
            else { //mangueira
            
            
            }
            
            $('#formCadastrar').bootstrapValidator({
        
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    nome: {
                        message: 'Este nome não é valido',
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
                    },
                    senha: {
                        validators: {
                            notEmpty: {
                                message: 'A senha é obrigatória'
                            },
                            identical: {
                                field: 'rsenha',
                                message: 'A senha informada e a sua validação não são iguais'
                            }
                        }
                    },
                    rsenha:{
                        validators: {
                            notEmpty: {
                                message: 'A confirmação da senha é obrigatória'
                            },
                            identical: {
                                field: 'senha',
                                message: 'A senha informada e a sua validação não são iguais'
                            }
                        }
                    },
                    telefone:{
                        validators: {
                            notEmpty: {
                                message: 'O telefone é obrigatório'
                            }
                        }
                    },
                    setor:{
                        validators: {
                            notEmpty: {
                                message: 'O campo departamento / setor é obrigatório'
                            }
                        }
                    },
                    funcao:{
                        validators: {
                            notEmpty: {
                                message: 'A função deve ser informada'
                            }
                        }
                    },
                    local:{
                        validators: {
                            notEmpty: {
                                message: 'O local deve ser informado'
                            }
                        }
                    },                    
                    andar:{
                        validators: {
                            notEmpty: {
                                message: 'O andar deve ser informado'
                            }
                        }
                    },                    
                    sala:{
                        validators: {
                            notEmpty: {
                                message: 'A sala deve ser informada'
                            }
                        }
                    }
                }
            });
            
            
            
            
        });
        
    </script>
  
  </body>
</html>
