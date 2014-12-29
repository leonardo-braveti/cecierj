package cecierjsuporte

class NavegarController {
    
    def cadastrarUsuario(){
        render(
                view:"../cadastro", model:
                [
                    unidade:Unidade.findAll("from Unidade as u order by u.nome"), 
                    localidade:Localidade.findAll("from Localidade as l order by l.nome"),
                    setor:Setor.findAll("from Setor as s order by s.nome")
                ]
            )
    }

    /* ****** TICKETS ****/
    def consolidado() {
        render(view: "../consolidado")
    }
    
    def novo(){        
        render(
                view:"../novo_ticket", model: 
                [
                    ip: request.getRemoteAddr(), 
                    problema:  Problema.findAll("from Problema as p order by p.nome"),
                    unidade:Unidade.findAll("from Unidade as u order by u.nome"), 
                    localidade:Localidade.findAll("from Localidade as l order by l.nome"),
                    prioridade:Prioridade.findAll("from Prioridade as p order by p.nome")
                ]
            )
    }
    
    def abertos(){
        def usuario = session.usuario
        def abertos = null
        if(usuario.perfil == Perfil.findByNome("Técnico"))
            abertos = Ticket.findAllByStatusAndDono("aberto", usuario)        
        if(usuario.perfil == Perfil.findByNome("Analista"))
            abertos = Ticket.findAllByStatus("aberto")        
            
        def tecnicos = Usuario.findAllByPerfil(Perfil.findByNome("Técnico"))        
        def analistas = Usuario.findAllByPerfil(Perfil.findByNome("Analista"))        
        
        render(view: "../abertos", model: [tickets: abertos, tecnicos: tecnicos, analistas: analistas])
    }
    
    def andamento(){
        def usuario = session.usuario
        def andamento = null
        if(usuario.perfil == Perfil.findByNome("Técnico"))
            andamento = Ticket.findAllByStatusAndDono("andamento", usuario)        
        if(usuario.perfil == Perfil.findByNome("Analista"))
            andamento = Ticket.findAllByStatus("andamento")        
        
        render(view: "../andamento", model: [tickets: andamento])
    }
    
    def historico(){
          def usuario = session.usuario
        def abertos = null
        if(usuario.perfil == Perfil.findByNome("Técnico"))
            abertos = Ticket.findAllByStatusAndDono("finalizado", usuario)        
        if(usuario.perfil == Perfil.findByNome("Analista"))
            abertos = Ticket.findAllByStatus("finalizado")        
        
        render(view: "../historico", model: [tickets: abertos])
    }
    
    /******* TICKETS ***********/
    
    /******* USUARIOS *********/
    
    
    def usuarios(){
        def usuarios = Usuario.findAll()
        render(view: "../usuarios", model: [usuarios: usuarios])
    }
    
    /******* USUARIOS ********/
    
    /******* SAIR ***********/
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
}
