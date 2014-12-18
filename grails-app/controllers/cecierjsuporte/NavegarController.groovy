package cecierjsuporte

class NavegarController {

    /* ****** TICKETS ****/
    def consolidado() {
        render(view: "../consolidado")
    }
    
    def abertos(){
        def usuario = session.usuario
        def abertos = null
        if(usuario.perfil.equals("tecnico"))
            abertos = Ticket.findAllByStatusAndDono("aberto", usuario)        
        else if(usuario.perfil.equals("analista"))
            abertos = Ticket.findAllByStatus("aberto")        
        render(view: "../abertos", model: [tickets: abertos])
    }
    
    def andamento(){
          def usuario = session.usuario
        def abertos = null
        if(usuario.perfil.equals("tecnico"))
            abertos = Ticket.findAllByStatusAndDono("andamento", usuario)        
        else if(usuario.perfil.equals("analista"))
            abertos = Ticket.findAllByStatus("andamento")        
        render(view: "../andamento", model: [tickets: abertos])
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
        render(view: "usuarios", model: [usuarios: usuarios])
    }
    
    /******* USUARIOS ********/
    
    /******* SAIR ***********/
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
}
