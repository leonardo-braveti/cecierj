package cecierjsuporte

class Ticket {
    
    String assunto;
    String prioridade;
    String descricao
    Date data
    Usuario usuario
    String status
    //Especialista especialista
    //String IP
    /*String tipo
    String local
    String setor
    String andar
    String sala*/
    
    
    static mapping = {
        version false        
    }    
    
    static belongsTo = Usuario
    
    
    
    
}
