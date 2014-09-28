<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Departamento de Suporte Técnico em TI ::: Fundação CECIERJ</title>

    <!-- BootStrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Meu CSS -->
     <link href="css/index.css" rel="stylesheet">

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
      
      <div id="selecao">
        <form>
          <button type="submit" class="btn btn-default navbar-btn botao" formaction="ticket/novo">Novo Ticket</button>
          <button type="submit" class="btn btn-default navbar-btn botao" formaction="ticket/status">Acompanhar Ticket</button>        
        </form>
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
        
      });      
    </script>    
  </body>
</html>