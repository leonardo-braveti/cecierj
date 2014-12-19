/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
    $("table thead tr th:nth-child(6)").hide();
    $("table tbody tr td:nth-child(6)").hide();
    
    
    $("table thead tr th:nth-child(9)").hide();
    $("table tbody tr td:nth-child(9)").hide();
    
    
    
    
    $("#atrelarForm").hide();    
    $("#tecnico").hide();    
    $("#analista").hide();    
    
    $(".editar").click(function(){
      var linha = $(this).attr("linha");       
       
      id = $("#"+linha+" td:nth-child(1)" ).text();
      $("#id").val(id);
      
      nome = $("#"+linha+" td:nth-child(2)" ).text();
      $("#nome").val(nome);
      
      departamento = $("#"+linha+" td:nth-child(3)" ).text();
      $("#departamento").val(departamento);
      
      local = $("#"+linha+" td:nth-child(4)" ).text();
      $("#local").val(local);
      
      assunto = $("#"+linha+" td:nth-child(5)" ).text();
      $("#assunto").val(assunto);
      
      descricao = $("#"+linha+" td:nth-child(6)" ).text();
      $("#descricao").val(descricao);
      
      prioridade = $("#"+linha+" td:nth-child(7)" ).text();
      $("#prioridade").val(prioridade);
      
      data = $("#"+linha+" td:nth-child(8)" ).text();
      $("#data").val(data);
      
      ip = $("#"+linha+" td:nth-child(9)" ).text();
      $("#ip").val(ip);
    
      $("#atrelarForm").show();
    });
    
    $("#sel_tipo").change(function(){
        var tipo = $("#sel_tipo option:selected").text();
        if(tipo == "Técnico"){
            $("#tecnico").show();    
            $("#analista").hide(); 
            $(".grupo_tecnico").change(function(){
                var nome = $("#nome_tecnico option:selected").text();
                $("#responsavel").val(nome);    
            });
        }
        else if(tipo == "Analista"){
            $("#tecnico").hide();    
            $("#analista").show();  
            $(".grupo_analista").change(function(){
                var nome = $("#nome_analista option:selected").text(); 
                $("#responsavel").val(nome);    
            });
        }
        else{
            $("#tecnico").hide();    
            $("#analista").hide();  
        }
        
    });
    
});      