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
        render tickets.each(){
            render "${it.tarefas.descricao}"
        }
        //render(view: "andamento", model: [tickets: tickets])
    }
    
    def historico(){
        def tickets = Ticket.findAllByStatus("finalizado")
        render(view: "historico", model: [tickets: tickets])
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
