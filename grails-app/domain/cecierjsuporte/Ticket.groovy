package cecierjsuporte

class Ticket {
    
    String nome;    
    String email;
    String telefone;
    String assunto;
    String prioridade;
    Date data;
    String tipo;
    
    static mapping = {
        version false
        tablePerHierarchy false
    }
    
    static constraints = {
    }
}
