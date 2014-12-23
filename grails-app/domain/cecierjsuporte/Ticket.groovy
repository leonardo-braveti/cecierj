package cecierjsuporte

class Ticket {    
    Date abertura
    Date encerramento                      
    String etiqueta    
    String descricao    
    Status status    
    static hasOne = [dono:Usuario, responsavel:Usuario, departamento:Departamento, problema:Problema, prioridade:Prioridade]    
    static hasMany = [atendimentos:Atendimento, equipamento:Equipamento]
    
    static mapping = {
        version false        
    }   
    
    static belongsTo = Usuario    
    
    static constraints = {         
        encerramento nullable : true        
    }
    
}
