package cecierjsuporte

class Ticket {    
    Date abertura
    Date encerramento                          
    String descricao    
    String status
    String unidade
    String localidade
    String setor    
    String universidade
    String curso
    String problema
    String prioridade
    Usuario dono
    Usuario responsavel
    String ip
    Equipamento equipamento
    
    static hasOne = [dono:Usuario, responsavel:Usuario]    
    static hasMany = [atendimentos:Atendimento]
    
    static mapping = {
        version false        
    }   
    
    static belongsTo = Usuario    
    
    static constraints = {         
        encerramento nullable: true     
        equipamento nullable: true
        responsavel nullable: true
        localidade nullable: true
        setor nullable: true
        universidade nullable: true
        curso nullable: true
    }
    
}
