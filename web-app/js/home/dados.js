/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
            /*$("#formValidar").hide();
            $("#formCadastrar").hide();
            $("#selecao").hide();
            
            $(".botao").click(function(){
                var decisao = $(this).attr("id")
                if(decisao == "decideNao"){
                    $("#selecao").show();
                    $("#formValidar").hide();
                }
                else{
                    $("#selecao").hide();
                    $("#formCadastrar").hide();
                    $("#formValidar").show();
                }
            });
            
            $(".botaos").click(function(){                
                var local = $(this).attr("tipo");
                
                if(local == "ceja" || local == "cederj" || local == "tutoria"){
                    $(".setor").hide();                    
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").show();
                    $(".funcao").show();
                    $("#formCadastrar").show();
                    
                    if(local == "ceja"){
                        configurarParaCeja()
                    }
                    else if(local == "cederj"){
                        configurarParaCederj()
                    }
                    else{                        
                        configurarParaTutoria();
                    }
                }
                else if(local == "centro"){       
                    $(".setor").show();                    
                    $(".andar").show();
                    $(".sala").show();
                    $(".local").hide();
                    $(".funcao").hide(); 
                    $("#formCadastrar").show();                    
                }   
                else if(local == "museu" || local == "mangueira"){
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").hide();
                    $(".funcao").hide();
                    $(".setor").show(); 
                    $("#formCadastrar").show();   
                }
                else{
                    $(".andar").hide();
                    $(".sala").hide();
                    $(".local").hide();
                    $(".funcao").hide();
                    $(".setor").hide(); 
                    $("#formCadastrar").show();                  
                }
                $("#tipo").val(local);  
                limparCampos();
                
            });
            
            
            function configurarParaCeja(){
                $(".local_cederj").hide();
                $(".local_tutoria").hide(); 
                $(".local_ceja").show();
                mostrarCamposComuns()
            }
            
            
            function configurarParaTutoria(){                
                $(".local_ceja").hide();
                $(".local_tutoria").show(); 
                $(".local_cederj").hide();   
                esconderCamposComuns();
                                              
            }
            function esconderCamposComuns(){
                $("select option").each(function() {                    
                    if($(this).attr("class") == null){
                        $(this).hide();                        
                    }
                });  
            }
            
            function mostrarCamposComuns(){
                $("select option").each(function() {                    
                    if($(this).attr("class") == null){
                        $(this).show();                        
                    }
                });  
            }*/
            
            
        });      