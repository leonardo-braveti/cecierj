package cecierjsuporte

class Usuario {
        
    String nome
    String email    
    String telefone
    String celular
    String senha      
    String unidade
    String localidade
    String setor
    String perfil
    
    static hasMany = [tickets:Ticket, trabalhaEm: Ticket, atendimentos:Atendimento]
    static mappedBy = [tickets: "dono", trabalhaEm: "responsavel"]
    static constraints = {      
        email unique: true        
        setor nullable: true
    }
    
    static mapping = {
        version false        
        
    }
}
