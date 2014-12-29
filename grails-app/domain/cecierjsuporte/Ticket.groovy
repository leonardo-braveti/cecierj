package cecierjsuporte

class Ticket {    
    Date abertura
    Date encerramento                      
    String etiqueta    
    String descricao    
    Status status
    String localidade
    String unidade
    String problema
    String prioridade
    
    static hasOne = [dono:Usuario, responsavel:Usuario]    
    static hasMany = [atendimentos:Atendimento, equipamento:Equipamento]
    
    static mapping = {
        version false        
    }   
    
    static belongsTo = Usuario    
    
    static constraints = {         
        encerramento nullable: true     
        etiqueta nullable: true
    }
    
}
