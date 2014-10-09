/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
    $("#fieldsEdicao").hide();
    $("#registrador").hide();
    
    $('#tabela').DataTable({     
        order: [[ 5, "desc" ]], // ordena a quarta coluna descrescente,
        pagingType: "full_numbers",
        "language": {
            lengthMenu: "_MENU_",
            zeroRecords: "Nada encontrado",
            info: "Visualizando página _PAGE_ de _PAGES_",
            infoEmpty: "Nenhum resultado disponível",
            infoFiltered: "(filtered from _MAX_ total records)",
            search: "Pesquisar",
            processing: "Processando ...",
            paginate: {
                first:      "Primeiro",
                previous:   "Anterior",
                next:       "Próximo",
                last:       "Último"
            }
        }         
    });
    
    $(".edicao").click(function(){    
       $("#fieldsEdicao").show();
       var chave = $(this).attr("linha");
       id = $("#"+chave+" td:nth-child(1)" ).text();
       criador = $("#"+chave+" td:nth-child(2)" ).text();
       telefone = $("#"+chave+" td:nth-child(3)" ).text();
       assunto = $("#"+chave+" td:nth-child(4)" ).text();
       descricao = $("#"+chave+" td:nth-child(5)" ).text();
       prioridade = $("#"+chave+" td:nth-child(6)" ).text();
       ip = $("#"+chave+" td:nth-child(8)" ).text();
       
       $("#tnumero").text(id);              
       $("#fnumero").val(id);                     
       $("#criador").text(criador);              
       $("#telefone").text(telefone);              
       $("#assunto").text(assunto);              
       $("#descricao").text(descricao);              
       $("#prioridade").text(prioridade);              
       $("#ip").text(ip);              
    });
    num_tarefa = 1;
    
    $("#addTarefa").click(function(event){
        event.preventDefault();          
        var codigo = $("<div class='form-group'>\n\
                        <label class='col-lg-3 control-label'>Tarefa #"+num_tarefa+"</label>\n\
                        <div class='col-lg-6'>                        \n\
                            <textarea name='tarefa' class='form-control'> </textarea>\n\
                        </div>\n\
                    </div>");
        codigo.insertBefore("#registrador");
        num_tarefa++;
        $("#registrador").show();
    });
});      