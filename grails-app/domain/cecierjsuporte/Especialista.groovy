package cecierjsuporte

class Especialista {
    
    static hasMany = [tickets : Ticket]
    
    static mapping = {
        version false
        tablePerHierarchy true
    }
    static constraints = {
    }
}
