package cecierjsuporte

class Ticket {
    
    String assunto;
    String prioridade;
    Date data
    String tipo
    String local
    String setor
    String andar
    String sala
    
    static mapping = {
        version false
        //tablePerHierarchy false
    }
    
    static constraints = {
        data: new Date()
    }
}
