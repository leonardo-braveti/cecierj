package cecierjsuporte

class Ticket {
    
    String assunto;
    String prioridade;
    String descricao
    Date abertura
    Date encerramento
    Usuario dono
    Usuario responsavel
    String status    
    String ip
    
    /*String tipo
    String local
    String setor
    String andar
    String sala*/
    
    
    static mapping = {
        version false        
    }    
    
    static belongsTo = Usuario
    
    static hasMany = [tarefas : Tarefa]    
    
    static constraints = { 
        responsavel nullable: true
        encerramento nullable : true
        tarefas nullable: true
    }
    
}
