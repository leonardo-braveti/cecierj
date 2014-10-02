package cecierjsuporte

class HomeController {

    def index() {
        //render "funciona"
        // carrega a pagina home/index.gsp
    }
    def novo(){
        
    }
    
    def aberto(){
        def usuario = session.user 
        def abertos = Ticket.findAllByStatusAndUsuario("aberto", usuario)        
        render(view: "aberto", model: [tickets: abertos])
    }
    
    def dados(){
        render(view: "dados", model: [dados: session.user])
    }
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
    
   
}
