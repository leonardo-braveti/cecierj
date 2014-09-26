package cecierjsuporte

class TicketController {

    def novo() {
       render(view : "ticket")
    }
    
    def salvarTicketInterno(){
        def ticket  = new TicketInterno(params);        
        ticket.setData(new Date());    
        
        def id =  ticket.save(flush: true)
        
        
        render id
    }
    
    def salvarTicketExterno(){
        def ticket  = new TicketExterno(params);        
        ticket.setData(new Date());    
        
        def id =  ticket.save(flush: true)
        render "Sua solicitacao foi regisrada com o seguinte numero "+id
    }
}
