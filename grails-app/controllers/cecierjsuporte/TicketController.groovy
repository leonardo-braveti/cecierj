package cecierjsuporte

class TicketController {
 
    
    def salvar(){        
        params.abertura = new Date();
        params.status = "ABERTO"
        
        if(params.unidade.equals("SEDE") || params.unidade.equals("GRÁFICA") )
            params.localidade = "Rio de Janeiro"
        
        if(params.unidade.equals("MUSEU"))
            params.localidade = "Duque de Caxias"
                
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
        redirect(url:"/navegar/listarTicketsEmAndamento")
    }
    
    def registrarAtendimento(){                        
        def ticket = Ticket.get(params.id_ticket)
        def atendimento = new Atendimento()         
        atendimento.nome = params.titulo        
        atendimento.solucao = params.descricao        
        atendimento.data = new Date()
        atendimento.ticket = ticket
        atendimento.usuario = session.usuario
        atendimento.save(failOnError: true)          
            
        flash.message = "ATENDIMENTO INCLUÍDO COM SUCESSO NO TICKET #"+ticket.id
        redirect(url:"/navegar/andamento")
    }
    
    
}

