/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
    //setor
    $("#listagem thead tr th:nth-child(5)").hide();
    $("#listagem tbody tr td:nth-child(5)").hide();
    
    //curso
    $("#listagem thead tr th:nth-child(6)").hide();
    $("#listagem tbody tr td:nth-child(6)").hide();
    
    //descricao
    $("#listagem thead tr th:nth-child(8)").hide();
    $("#listagem tbody tr td:nth-child(8)").hide();
    
    //ip
    $("#listagem thead tr th:nth-child(11)").hide();
    $("#listagem tbody tr td:nth-child(11)").hide();
    
    $(".mostraSetor").hide();
    $(".mostraDisciplina").hide();
    
    $("#atrelarForm").hide();    
    
    $(".editar").click(function(){
      $(".mostraSetor").hide();
      $(".mostraCurso").hide();
      
      var linha = $(this).attr("linha");       
       
      id = $("#"+linha+" td:nth-child(1)" ).text();
      $("#id").val(id);
      $("#td_id").text(id);
      
      nome = $("#"+linha+" td:nth-child(2)" ).text();
      $("#nome").val(nome);
      $("#td_nome").text(nome);
      
      /********** BLOCO UNIDADE *********/
      unidade = $("#"+linha+" td:nth-child(3)" ).text();
      $("#unidade").val(unidade);
      $("#td_unidade").text(unidade);
      
      if(unidade == "SEDE"){
          setor = $("#"+linha+" td:nth-child(5)" ).text();
          $("#setor").val(setor);
          $("#td_setor").text(setor);
          $(".mostraSetor").show();
      }
      if(unidade == "TUTORIA"){
          curso = $("#"+linha+" td:nth-child(6)" ).text();
          $("#curso").val(curso);
          $("#td_curso").text(curso);
          $(".mostraCurso").show();
      }
      /********** BLOCO UNIDADE *********/
      
      localidade = $("#"+linha+" td:nth-child(4)" ).text();
      $("#localidade").val(localidade);
      $("#td_localidade").text(localidade);
      
      problema = $("#"+linha+" td:nth-child(7)" ).text();
      $("#problema").val(problema);
      $("#td_problema").text(problema);
      
      descricao = $("#"+linha+" td:nth-child(8)" ).text();
      $("#descricao").val(descricao);
      $("#td_descricao").text(descricao);
      
      prioridade = $("#"+linha+" td:nth-child(9)" ).text();
      $("#prioridade").val(prioridade);
      $("#td_prioridade").text(prioridade);
      
      data = $("#"+linha+" td:nth-child(10)" ).text();
      $("#data").val(data);
      $("#td_data").text(data);
      
      ip = $("#"+linha+" td:nth-child(11)" ).text();
      $("#ip").val(ip);
      $("#td_ip").text(ip);
      
      responsavel = $("#"+linha+" td:nth-child(12)" ).text();
      $("#responsavel").val(responsavel);
      $("#td_responsavel").text(responsavel);
    
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
       
       $("#form_principal").attr("action", "/CecierjSuporte/ticket/vincularEquipamento");
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