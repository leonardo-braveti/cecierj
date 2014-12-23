package cecierjsuporte

class Unidade {
    
    String nome;
    static hasMany = [departamentos: Departamento]
    static constraints = {
    }
    
    static mapping = {
        version false        
    }  
}
