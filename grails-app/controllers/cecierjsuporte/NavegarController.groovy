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
                    localidade:Localidade.findAll("from Localidade as l order by l.nome")
                ]
            )
    }
    
    def abertos(){
        def usuario = session.usuario
        def abertos = null
        if(usuario.perfil.equals("tecnico"))
            abertos = Ticket.findAllByStatusAndDono("aberto", usuario)        
        else if(usuario.perfil.equals("analista"))
            abertos = Ticket.findAllByStatus("aberto")        
            
        def tecnicos = Usuario.findAllByPerfil("tecnico")        
        def analistas = Usuario.findAllByPerfil("analista")        
        
        render(view: "../abertos", model: [tickets: abertos, tecnicos: tecnicos, analistas: analistas])
    }
    
    def andamento(){
        def usuario = session.usuario
        def andamento = null
        if(usuario.perfil.equals("tecnico"))
            andamento = Ticket.findAllByStatusAndDono("andamento", usuario)        
        else if(usuario.perfil.equals("analista"))
            andamento = Ticket.findAllByStatus("andamento")        
        render(view: "../andamento", model: [tickets: andamento])
    }
    
    def historico(){
          def usuario = session.usuario
        def abertos = null
        if(usuario.perfil.equals("tecnico"))
            abertos = Ticket.findAllByStatusAndDono("finalizado", usuario)        
        else if(usuario.perfil.equals("analista"))
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
