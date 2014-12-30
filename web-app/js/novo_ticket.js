
$("document").ready(function(){
    $("#localidade").hide();
    $("#setor").hide();
    $("#universidade").hide();
    $("#curso").hide();
    
    $("#unidade").change(function(){
        valor = $("#unidade option:selected").val();
        
        if(valor == "SEDE"){
            $("#localidade").hide();
            $("#universidade").hide();
            $("#curso").hide();
            $("#setor").show();
        }
        else if(valor == "CEDERJ" || valor == "CEJA"){
            $("#setor").hide();            
            $("#universidade").hide();
            $("#curso").hide();            
            $("#selLocalidade").val("");            
            $("#localidade").show();
            
        }
        else if(valor == "MANGUEIRA" || valor == "MUSEU" || valor == "GRÁFICA"){
            $("#localidade").hide();
            $("#setor").hide();
            $("#universidade").hide();
            $("#curso").hide();
        }
        else if(valor == "TUTORIA"){
            $("#localidade").hide();
            $("#setor").hide();
            $("#universidade").show();
            $("#curso").show();
        }
        else{
            $("#localidade").hide();
            $("#setor").hide();
            $("#universidade").hide();
            $("#curso").hide();
        }
        
    });
});      