package cecierjsuporte

class TicketController {
    
    

    def novo() {
       render(view : "ticket")
    }
    
    def salvar(){
        def dados = params
        
        //def locais = ["local_ce"]
        
        
        if(dados.tipo == "centro")
            salvarTicketInterno(dados)
        else
            salvarTicketExterno(dados)
    }
    
    def salvarTicketInterno(params){
        def ticket  = new TicketInterno(params);        
        ticket.setData(new Date());            
        def id =  ticket.save(flush: true)      
        
        render id
    }
    
    def salvarTicketExterno(params){
        def ticket  = new TicketExterno(params);        
        ticket.setData(new Date());    
        
        def id =  ticket.save(flush: true)
        render id
    }
}
