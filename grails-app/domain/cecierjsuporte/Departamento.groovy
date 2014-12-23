package cecierjsuporte

class Departamento {
    
    String telefone
    String complemento    
    Unidade unidade
    Setor setor
    Localidade localidade
    Usuario responsavel
    
    static hasOne = [unidade:Unidade, setor:Setor, localidade:Localidade, responsavel:Usuario]
    static hasMany = [tickets: Ticket]
    
    static constraints = {
        responsavel nullable:true
        setor nullable: true
        complemento nullable: true
        telefone nullable: true
    }
    
    static mapping = {
        version false        
    }  
}
