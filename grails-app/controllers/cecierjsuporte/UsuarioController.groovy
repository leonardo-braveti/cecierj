package cecierjsuporte

class UsuarioController {

    def validar() {
        def usuario = Usuario.findByEmailAndSenha(params.email,params.senha);
        
        if(usuario){                    
            session.user = usuario
            redirect(controller: "home", action: "index")
        }
        else{
            flash.message = "Nome de Usuário e/ou Login Inválidos"
            redirect(url: "/")           
        }
    }
    
    def cadastrar(){
        def usuario = new Usuario(params)        
        
        if(params.senha == params.rsenha){            
            usuario.save(failOnError: true)
            flash.message = "Cadastro efetuado com sucesso"
            redirect(url: "/")  
        }
        else{
            
            redirect(url: "/")  
        }
    }
}
