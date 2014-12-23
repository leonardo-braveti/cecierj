package cecierjsuporte

class Atendimento {    
    String nome
    String solucao
    Date data     
    Status status
    Ticket ticket    
    static hasOne = [usuario: Usuario]
    
    static mapping = {
        version false        
    }  
}
