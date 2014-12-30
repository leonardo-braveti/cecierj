package cecierjsuporte

class Atendimento {    
    String nome
    String solucao
    Date data         
    Ticket ticket    
    static hasOne = [usuario: Usuario]
    
    static mapping = {
        version false        
    }  
}
