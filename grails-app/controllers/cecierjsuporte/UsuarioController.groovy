package cecierjsuporte

class UsuarioController {
    
    
    
    def validar() {
        def usuario = Usuario.findByEmailAndSenha(params.email,params.senha);
        
        if(usuario){                    
            session.usuario = usuario
            render(view:"../consolidado")                                    
        }
        else{
            flash.message = "CREDENCIAIS INVÁLIDAS"
            redirect(url:"/")
        }
        System.out.println(session.usuario.perfil)
    }
    
    def cadastrar(){
        params.perfil = "usuario"
        def usuario = new Usuario(params)        
        
        if(params.senha == params.rsenha){            
            usuario.save(failOnError: true)
            flash.message = "CADASTRO EFETUADO COM SUCESSO"
            redirect(url: "/")  
        }
        else{
            
            redirect(url: "/")  
        }
    }
    
    def atualizar(){        
        def u = Usuario.get(session.user.id)        
        
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
        flash.message = "DADOS ATUALIZADOS COM SUCESSO"
        redirect(url: "/home/")        
    }
    
    def excluir(){        
        def usuario = Usuario.get(params.ex_id);
        usuario.delete(flush: true);        
        flash.message = "USUÁRIO EXCLUÍDO COM SUCESSO"
        redirect(url: "/admin/usuarios")  
    }
    
    def mudar_perfil(){
        def u = Usuario.get(params.form_id);   
        u.perfil = params.form_perf_novo
        u.save(flush:true)
        flash.message = "PERFIL MODIFICADO COM SUCESSO"
        redirect(url: "/admin/usuarios")   
    }
}
