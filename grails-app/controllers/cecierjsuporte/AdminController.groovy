package cecierjsuporte

class AdminController {

    def index() { }
    
    def home(){ }
    
    def abertos(){
        def tickets = Ticket.findAllByStatusAndResponsavel("aberto", null)
        def tecnicos = Usuario.findAllByPerfil("tecnico");
        render(view: "aberto", model: [tickets: tickets, tecnicos: tecnicos])
    }
    
    
    def andamento(){
        def tickets = Ticket.findAllByStatus("andamento")        
        render(view: "andamento", model: [tickets: tickets])
    }
    
    def registro(Long id){        
        def ticket = Ticket.get(id)        
        render(view: "registro", model: [ticket: ticket])
    }
    
    
    def historico(){
        def tickets = Ticket.findAllByStatus("fechado")
        render(view: "historico", model: [tickets: tickets])
    }
    
    def dados(){
        
    }
    
    def usuarios(){
        def usuarios = Usuario.findAll()
        render(view: "usuarios", model: [usuarios: usuarios])
    }
    
    def sair(){        
        session.invalidate()
        redirect(url: "/admin")
    }
}
