package cecierjsuporte

class Usuario {
        
    String nome
    String email
    Departamento departamento    
    String telefone
    String celular
    String senha  
    String perfil
    static hasMany = [tickets:Ticket, atendimentos:Atendimento]
    static mappedBy = [tickets: "dono"]
    // mapeamento para tickets & mapeamento para atendimentos
    
    
    
    static constraints = {      
        email unique: true        
    }
    
    static mapping = {
        version false
    }
}
