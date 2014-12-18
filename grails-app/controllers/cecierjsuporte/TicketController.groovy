package cecierjsuporte

class TicketController {
 
    
    def novo() {
       render(view : "../ticket")
    }
    def salvar(){        
        params.abertura = new Date();
        params.status = "aberto"
        
        def ticket = new Ticket(params)       
        ticket.dono = session.user        
        
        ticket.save(failOnError: true);        
        render(view: "../aberto")
    }    
    
    /******  area administrativa **************/
    def atribuirTecnico(){
        def tecnico = Usuario.get(params.especialista);
        def ticket = Ticket.get(params.numero);
        
        ticket.status = "andamento"
        ticket.responsavel = tecnico
        ticket.save(flush:true)   
        redirect(uri: "/admin/abertos")
    }
    
    def registrarTrabalho(){                        
        
        if(!params.descricao.equals("")){        
            def ticket = Ticket.get(params.id)
            def tarefa = new Tarefa()         
            tarefa.descricao = params.descricao        
            tarefa.data = new Date()
            tarefa.ticket = ticket
            tarefa.save(flush:true)          
        }
        
        if(params.concluir == "sim"){
            def ticket = Ticket.get(params.id)
            ticket.status = "fechado"
            ticket.encerramento = new Date()
            ticket.save(flush:true)          
        }
            
        flash.message = "Tarefas do ticket "+params.numero+" registradas com sucesso"
        redirect(uri: "/admin/andamento")
    }
}

