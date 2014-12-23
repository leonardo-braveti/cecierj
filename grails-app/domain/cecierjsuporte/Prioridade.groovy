package cecierjsuporte

class Prioridade{
    
    String nome;
    
    static hasMany = [tickets: Ticket]
    static constraints = {
    }
    
    static mapping = {
        version false        
    }  
}
