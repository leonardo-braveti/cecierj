package cecierjsuporte

class Equipamento{

    String hostname
    String ip
    String etiqueta
    
    static constraints = {
        ip nullable:true        
    }
    
    static mapping = {
        version false
    }  
}
