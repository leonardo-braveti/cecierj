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
      
      responsavel = $("#"+linha+" td:nth-child(10)" ).text();
      $("#responsavel").val(responsavel);
    
      $("#atrelarForm").show();
    });
    
    $("a#inline").fancybox({
        'hideOnContentClick': true
    });
    
    $("#incluir_tarefa").click(function(){
        $("#id_ticket").val($("#id").val());
    });
    
    $("#encerrar_ticket").click(function(event){
       var decisao = confirm("Você realmente deseja encerrar este ticket?");
       if(!decisao)
           event.preventDefault();
    });
    
    $("#atualizar_ticket").click(function(event){
       event.preventDefault() ;
       alert($("#form_principal").attr("action"));
       $("#form_principal").attr("action", "/CecierjSuporte/ticket/atualizar");
       alert($("#form_principal").attr("action"));
    });
    
    $("#nome_maquina").hide();
    $("#sel_tipo").change(function(){
       var tipo = $("#sel_tipo option:selected").text(); 
       if(tipo == "Sim")
           $("#nome_maquina").show();
       else if(tipo == "Não")
           $("#nome_maquina").hide();
       else
           $("#nome_maquina").hide();
    });
    
});      