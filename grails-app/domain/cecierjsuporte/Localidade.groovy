package cecierjsuporte

class Localidade {
    
    String nome;
    
    static hasMany = [departamentos: Departamento]
    
    static constraints = {
    }
    
    static mapping = {
        version false        
    }  
}
