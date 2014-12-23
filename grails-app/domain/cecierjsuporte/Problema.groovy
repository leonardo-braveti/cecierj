package cecierjsuporte

class Problema{
    
    String nome;
    
    static hasMany = [tickets: Ticket]
    static constraints = {
    }
    
    static mapping = {
        version false        
    }  
}
