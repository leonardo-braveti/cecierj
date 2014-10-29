package cecierjsuporte

class Tarefa {

    String descricao
    Date data
    Ticket ticket
    
    static belongsTo = [ticket : Ticket]
    static mapping = {
        version false        
    }  
    
    static constraints = {
    }
}
