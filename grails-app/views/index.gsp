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
    
    <link href="<g:resource dir="css" file="bootstrapValidator.min.css" />" rel="stylesheet">

  </head>
  <body>
    <div id="completo">
      <div id="topo">
          <img id="banner" src="images/banner_cecierj.png"/>
      </div>

      <div id="mensagem">
        <p id="titulo"> Departamento de Suporte Técnico em Informática </p>
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
        <br>
        
        <p id="login_invalido">
            <g:message code="${flash.message}" />
        </p>
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
        
        <br>
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
                    <select name="andar" id="andar">
                        <option class="op_vazio" selected></option>   
                        <option value="15">15</option>              
                        <option value="16">16</option>              
                    </select>                    
                </div>
            </div>
            
            <div class="form-group sala">
                <label class="col-lg-3 control-label">Sala</label>
                <div class="col-lg-6">
                    <select name="sala" id="sala">
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
                    <g:textField name="funcao" class="form-control"/>
                </div>
            </div>
            
            <div class="form-group local">
                <label class="col-lg-3 control-label">Local</label>
                <div class="col-lg-6">
                    <select id="local" name="local">
                        <option class="local_cederj" value="Alemão">Alemão</option>    
                        <option class="" value="Angra dos Reis">Angra dos Reis</option>         
                        <option class="local_ceja" value="Aperibé">Aperibé</option>          
                        <option class="local_ceja" value="Araruama">Araruama</option>          
                        <option class="local_ceja" value="Arrail do Cabo">Arrail do Cabo</option>              
                        <option class="" value="Barra do Piraí">Barra do Piraí</option>
                        <option class="local_ceja" value="Barra Mansa">Barra Mansa</option>
                        <option class="" value="Belford Roxo">Belford Roxo</option>
                        <option class="local_ceja" value="Bom Jardim">Bom Jardim</option>              
                        <option class="" value="Bom Jesus do Itapaboana">Bom Jesus do Itapaboana</option>
                        <option class="local_ceja" value="Cambuci">Cambuci</option>              
                        <option class="" value="Campo Grande">Campo Grande</option>
                        <option class="local_ceja" value="Campos dos Goytacazes">Campos dos Goytacazes</option>
                        <option class="" value="Cantagalo">Cantagalo</option>    
                        <option class="local_ceja" value="Carmo">Carmo</option>    
                        <option class="local_ceja" value="Casimiro de Abreu">Casimiro de Abreu</option>    
                        <option class="local_ceja" value="Conceição de Macabu">Conceição de Macabu</option>              
                        <option class="local_ceja" value="Copacana">Copacabana</option>    
                        <option class="local_ceja" value="Copacana">Cordeiro</option>    
                        <option class="local_ceja" value="Duas Barras">Duas Barras</option>    
                        <option class="" value="Duque de Caxias">Duque de Caxias</option>    
                        <option class="local_ceja" value="Conceição de Macabu">Conceição de Macabu</option>              
                        <option class="local_ceja" value="Engenheiro Paulo de Frontin">Engenheiro Paulo de Frontin</option> 
                        <option class="local_ceja" value="Ilha do Governador">Ilha do Governador</option>      
                        <option class="" value="Itaguaí">Itaguaí</option>
                        <option class="local_ceja" value="Italva">Italva</option>                                                                  
                        <option class="" value="Itaocara">Itaocara</option>        
                        <option class="local_cederj" value="Itaperuna">Itaperuna</option>    
                        <option class="local_ceja"  value="Jacarezinho">Jacarezinho</option> 
                        <option class="local_cederj" value="Macaé">Macaé</option>        
                        <option class="local_ceja" value="Madureira">Madureira</option>                                
                        <option class="local_cederj" value="Magé">Magé</option>        
                        <option class="local_cederj" value="Maracanã">Maracanã</option>        
                        <option class="local_ceja" value="Maricá">Maricá</option>                                
                        <option class="local_cederj" value="Miguel Pereira">Miguel Pereira</option>
                        <option class="local_ceja" value="Miracema">Miracema</option>
                        <option class="" value="Natividade">Natividade</option>
                        <option class="" value="Niterói">Niterói</option>
                        <option class="" value="Nova Friburgo">Nova Friburgo</option>
                        <option class="local_cederj" value="Nova Iguaçu">Nova Iguaçu</option>
                        <option class="local_ceja" value="Paciência">Paciência</option>
                        <option class="local_cederj" value="Paracambi">Paracambi</option>
                        <option class="local_ceja" value="Parati">Parati</option>
                        <option class="" value="Petrópolis">Petrópolis</option>
                        <option class="local_ceja" value="Penha">Penha</option>
                        <option class="local_ceja" value="Piabetá">Piabetá</option>
                        <option class="local_cederj" value="Pirai">Pirai</option>
                        <option class="local_ceja" value="Porciúncula">Porciúncula</option>
                        <option class="local_cederj" value="Quatis">Quatis</option>
                        <option class="local_ceja" value="Quissamã">Quissamã</option>
                        <option class="" value="Resende">Resende</option>
                        <option class="" value="Rio Bonito">Rio Bonito</option>
                        <option class="" value="Rio das Flores">Rio das Flores</option>
                        <option class="local_ceja" value="Rio das Ostras">Rio das Flores</option>
                        <option class="" value="Rocinha">Rocinha</option>
                        <option class="" value="Santa Maria Madalena">Santa Maria Madalena</option>
                        <option class="local_ceja"  value="São Cristovão">São Cristovão</option>
                        <option class="" value="São Fidélis">São Fidélis</option>
                        <option class="local_cederj" value="São Francisco do Itabapoana">São Franciso do Itabapoana</option>                        
                        <option class="" value="São Gonçalo">São Gonçalo</option>
                        <option class="local_ceja" value="São João de Meriti">São João de Meriti</option>
                        <option class="" value="São Pedro da Aldeia">São Pedro da Aldeia</option>
                        <option class="local_ceja" value="Santo Antonio de Padua">Santo Antonio de Padua</option>
                        <option class="local_ceja"  value="Sapucaia">Sapucaia</option>
                        <option class="local_cederj"  value="Saquarema">Saquarema</option>
                        <option class="local_ceja"  value="Seropédica">Seropédica</option>
                        <option class="local_ceja"  value="Sumidouro">Sumidouro</option>
                        <option class="local_ceja" value="Teresópolis">Teresópolis</option>
                        <option class="" value="Três Rios">Três Rios</option>                        
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
            
            <input type="hidden" id="tipo" name="tipo">
            
            <div class="form-group">
                <button type="submit" class="btn btn-success navbar-btn ">Entrar</button> 
            </div>        
                    
            <!-- ***** fim dos dados para configuração de usuario CEDERJ, CEJA e TUTORIA ***** -->
        </g:form>
              
            <!-- ******** fim do formulario de cadastro  ******* -->
              
            <!-- ******** inicio do formulario de cadastro  ******* -->
        <g:form name="formValidar" class="form-horizontal" url="[action:'validar_usuario',controller:'usuario']">
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
    
    <script src="<g:resource dir="js" file="index.js"/>"></script>
  
  </body>
</html>
