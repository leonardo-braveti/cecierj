/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
    
    $("#perfilForm").hide();
    
    $(".edicao").click(function(){
       var linha = $(this).attr("linha");
       
       id = $("#"+linha+" td:nth-child(1)" ).text();
       $("#form_id").val(id);
       nome = $("#"+linha+" td:nth-child(2)" ).text();
       $("#form_nome").val(nome);
       perfil = $("#"+linha+" td:nth-child(5)" ).text();
       $("#form_perf_atual").val(perfil);
       
       
       
       $("#perfilForm").show();
    });
    
    $('#tabela').DataTable({        
        
        order: [[ 3, "desc" ]], // ordena a quarta coluna descrescente,
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
});      