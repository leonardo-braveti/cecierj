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
    
    
    
    def dados(){
        render(view: "dados", model: [dados: session.user])
    }
    def sair(){        
        session.invalidate()
        redirect(url: "/")
    }
    
   
}
