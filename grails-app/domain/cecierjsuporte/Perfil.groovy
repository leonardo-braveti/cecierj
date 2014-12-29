package cecierjsuporte

class Perfil{
    
    String nome;
    static constraints = {
    }
    
    static hasMany = [usuarios: Usuario]
    
    static mapping = {
        version false        
    }  
}
