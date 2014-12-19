package cecierjsuporte

class TicketController {
 
    
    def salvar(){        
        params.abertura = new Date();
        params.status = "aberto"
        
        def ticket = new Ticket(params)       
        ticket.dono = session.usuario        
        
        ticket.save(failOnError: true);        
        flash.message = "TICKET CRIADO COM SUCESSO. ACOMPANHE O MESMO ATRAVÉS DO MENU TICKET"
        redirect(url:"/navegar/novo")        
    }    
    
    def atualizar(){
        def ticket = Ticket.get(params.id)
        def computador = Computador.findByHostname(params.hostname)
        ticket.computador = computador;
        ticket.save(failOnError: true);        
        flash.message = "COMPUTADOR "+computador.hostname+" VINCULADO AO TICKET #"+ticket.id+" COM SUCESSO"
        redirect(url:"/navegar/andamento")        
    }
    
    def encerrar(){
        def ticket = Ticket.get(params.id)
        ticket.status = "fechado"
        ticket.encerramento = new Date()
        ticket.save(flush:true)          
        flash.message = "TICKET #"+ticket.id+" CONCLUÍDO COM SUCESSO"
        redirect(url:"/navegar/andamento")
    }
    
    /******  area administrativa **************/
    def atribuirTecnico(){
        System.out.println(params)        
        Usuario responsavel = Usuario.findByNome(params.responsavel);
        def ticket = Ticket.get(params.id);
        
        ticket.status = "andamento"
        ticket.responsavel = responsavel
        ticket.save(flush:true)   
        flash.message = "TICKET #"+ticket.id+" FOI VINCULADO À "+responsavel.nome.toUpperCase()+" COM SUCESSO."
        redirect(url:"/navegar/abertos")
    }
    
    def registrarTarefa(){                        
        def ticket = Ticket.get(params.id_ticket)
        def tarefa = new Tarefa()         
        tarefa.titulo = params.titulo        
        tarefa.descricao = params.descricao        
        tarefa.data = new Date()
        tarefa.ticket = ticket
        tarefa.save(failOnError: true)          
            
        flash.message = "TAREFA INCLUÍDA COM SUCESSO NO TICKET #"+ticket.id
        redirect(url:"/navegar/andamento")
    }
    
    
}

