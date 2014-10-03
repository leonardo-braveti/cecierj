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
    
    def atualizar(){        
        def u = Usuario.get(session.user.id)        
        //render u.sala
        //render params.sala        
        u.nome = params.nome
        u.email = params.email
        u.senha = params.senha    
        u.telefone = params.telefone        
        
        if(session.user.tipo == "centro"){        
            u.setor = params.setor
            u.andar = params.andar
            u.sala = params.sala
        }
        if(session.user.tipo == "mangueira" || session.user.tipo == "museu"){        
            u.setor = params.setor            
        }
        if(session.user.tipo == "ceja" || session.user.tipo == "cederj" || session.user.tipo == "tutoria"){        
            u.funcao = params.funcao            
            u.local = params.local            
        }
        
        
        u.save(flush: true)     
        session.user = u
        flash.message = "Dados atualizados com sucesso"
        redirect(url: "/home/")
    }
}
