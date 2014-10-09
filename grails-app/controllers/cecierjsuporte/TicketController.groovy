package cecierjsuporte

class TicketController {
    
    def novo() {
       render(view : "ticket")
    }
    
    def salvar(){        
        params.abertura = new Date();
        params.status = "aberto"
        
        def ticket = new Ticket(params)       
        ticket.dono = session.user        
        
        ticket.save(failOnError: true);        
        redirect(uri: "/home/aberto")
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
        /*String[] dizeres = params.tarefa.split(",")
        render dizeres[0]
        render dizeres[1]*/
        
        def ticket = Ticket.get(params.numero)
        (params.tarefa).each(){
            def tarefa = new Tarefa()
            tarefa.descricao = "${it}"
            tarefa.data = new Date()
            tarefa.ticket = ticket
            tarefa.save(flush:true)            
        }
        flash.message = "Tarefas do ticket "+params.numero+" registradas com sucesso"
        redirect(uri: "/admin/andamento")
        
    }
}

