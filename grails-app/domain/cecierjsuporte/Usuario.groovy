package cecierjsuporte

class Usuario {
    
    long id
    String nome
    String email
    String senha
    String funcao
    String telefone
    String tipo
    String local
    String setor
    String andar
    String sala
    String perfil
    
    static mapping = {
        version false
    }
  
    static constraints = {      
        email unique: true
        funcao nullable: true
        tipo nullable: true
        local nullable: true
        andar nullable: true
        sala nullable: true
        setor nullable: true
    }
    
    static hasMany = [tickets : Ticket]
    static mappedBy = [tickets: "dono"]
}
