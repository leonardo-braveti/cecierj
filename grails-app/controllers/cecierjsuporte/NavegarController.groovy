package cecierjsuporte

class NavegarController {
    
    def cadastrarUsuario(){
        render(
                view:"../cadastrarUsuario", model:
                [
                    unidade:Unidade.findAll("from Unidade as u order by u.nome"), 
                    localidade:Localidade.findAll("from Localidade as l order by l.nome"),
                    setor:Setor.findAll("from Setor as s order by s.nome"),
                    universidade:Universidade.findAll("from Universidade as u order by u.nome"),
                    curso:Curso.findAll("from Curso as c order by c.nome")
                ]
            )
    }

    /* ****** TICKETS ****/
    def consolidado() {
        render(view: "../consolidado")        
    }
    
    def criarTicket(){        
        render(
                view:"../criarTicket", model: 
                [
                    ip: request.getRemoteAddr(), 
                    problema:  Problema.findAll("from Problema as p order by p.nome"),
                    unidade:Unidade.findAll("from Unidade as u order by u.nome"), 
                    localidade:Localidade.findAll("from Localidade as l order by l.nome"),
                    prioridade:Prioridade.findAll("from Prioridade as p order by p.nome"),
                    setor:Setor.findAll("from Setor as s order by s.nome"),
                    universidade:Universidade.findAll("from Universidade as u order by u.nome"),
                    curso:Curso.findAll("from Curso as c order by c.nome")                
                ]
            )
    }
    
    def listarTicketsAbertos(){
        def usuario = session.usuario
        def abertos = null
        
        if(usuario.perfil.equals("Técnico") || usuario.perfil.equals("Usuário"))
            abertos = Ticket.findAllByStatusAndDono("ABERTO", usuario)        
        if(usuario.perfil.equals("Analista"))
            abertos = Ticket.findAllByStatus("ABERTO")        
        
        def tecnicos = Usuario.findAllByPerfil("Técnico")        
        def analistas = Usuario.findAllByPerfil("Analista")
        
        render(view: "../listarTicketsAbertos", model: [tickets: abertos, tecnicos: tecnicos, analistas: analistas])
    }
    
    def listarTicketsEmAndamento(){
        def usuario = session.usuario
        def andamento = null
        if(usuario.perfil.equals("Técnico") || usuario.perfil.equals("Usuário"))
            andamento = Ticket.findAllByStatusAndDono("ANDAMENTO", usuario)        
        if(usuario.perfil.equals("Analista"))
            andamento = Ticket.findAllByStatus("ANDAMENTO")        
        
        render(view: "../listarTicketsEmAndamento", model: [tickets: andamento])
    }
    
    def listarHistoricoDeTickets(){
          def usuario = session.usuario
        def abertos = null
        if(usuario.perfil == Perfil.findByNome("Técnico"))
            abertos = Ticket.findAllByStatusAndDono("finalizado", usuario)        
        if(usuario.perfil == Perfil.findByNome("Analista"))
            abertos = Ticket.findAllByStatus("finalizado")        
        
        render(view: "../listarHistoricoDeTickets", model: [tickets: abertos])
    }
    
    /******* TICKETS ***********/
    
    /******* USUARIOS *********/
    
    
    def listarUsuarios(){
        def usuarios = Usuario.findAll()
        render(view: "../listarUsuarios", model: [usuarios: usuarios, perfil: Perfil.findAll()])
    }
    
    def pesquisarUsuarios(){
        
        render(view: "../pesquisarUsuarios")
    }
    
    /******* USUARIOS ********/
    
    /******* SAIR ***********/
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
}
