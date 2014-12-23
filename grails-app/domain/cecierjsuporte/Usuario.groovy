package cecierjsuporte

class Usuario {
        
    String nome
    String email
    Departamento departamento    
    String telefone
    String celular
    String senha  
    String perfil
    static hasMany = [tickets:Ticket, trabalhaEm: Ticket, atendimentos:Atendimento, responsavel: Departamento]
    static mappedBy = [tickets: "dono", trabalhaEm: "responsavel", responsavel: "responsavel"]
   
    static constraints = {      
        email unique: true        
        departamento nullable: true
    }
    
    static mapping = {
        version false
    }
}
