package cecierjsuporte

class TicketController {
    
    def novo() {
       render(view : "ticket")
    }
    
    def salvar(){
        params.data = new Date();
        params.status = "aberto"
        def ticket = new Ticket(params)       
        ticket.usuario = session.user
        
        
        ticket.save(failOnError: true);        
        redirect(uri: "/home/aberto")
    }    
}

