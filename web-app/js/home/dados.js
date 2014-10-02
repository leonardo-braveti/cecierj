/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("document").ready(function(){
            $("#formValidar").hide();
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