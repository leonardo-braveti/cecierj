package cecierjsuporte

class Setor {
    
    String nome;
    static hasMany = [departamentos: Departamento]
    
    static constraints = {
    }
    
    static mapping = {
        version false        
    }  
}
