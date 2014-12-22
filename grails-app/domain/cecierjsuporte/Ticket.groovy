package cecierjsuporte

class Ticket {    
    Date abertura
    Date encerramento    
    Usuario dono
    Usuario responsavel      
    Unidade unidade
    Localidade localidade
    Equipamento equipamento
    String etiqueta
    Problema problema
    String descricao
    Prioridade prioridade;
    Status status
    
    static hasMany = [atendimentos:Atendimento]
    
    static mapping = {
        version false        
    }   
    
    static belongsTo = Usuario    
    
    static constraints = {         
        encerramento nullable : true        
    }
    
}
