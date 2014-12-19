package cecierjsuporte

class Tarefa {
    String titulo
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
