package cecierjsuporte

class HomeController {

    def index() {
        //render "funciona"
        // carrega a pagina home/index.gsp
    }
    def novo(){
        def ip = request.remoteAddr 
        render(view: "novo", model: [ip: ip])
    }
    
    def aberto(){
        def usuario = session.user 
        def abertos = Ticket.findAllByStatusAndDono("aberto", usuario)        
        render(view: "aberto", model: [tickets: abertos])
    }
    
    def historico(){
        def usuario = session.user 
        def finalizados = Ticket.findAllByStatusAndDono("finalizado", usuario)        
        render(view: "finalizado", model: [tickets: finalizados])
    }
    
    def dados(){
        render(view: "dados", model: [dados: session.user])
    }
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
    
   
}
