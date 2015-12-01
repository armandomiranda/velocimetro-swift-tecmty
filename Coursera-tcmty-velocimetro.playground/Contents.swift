//: Playground - noun: a place where people can play

import UIKit

//Declaración de la enumeración
enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto{
    
    
    var velocidad : Velocidades
    
    init(){
        
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    //Función con devolución de una tupla
    func cambioDeVelocidad() -> (Int, String){
        
        let velocidadActualDelAuto = velocidad.rawValue
        var velocidadEnNombre : String
        
        //Asignación de nuevos valores
        switch velocidad{
            
        case Velocidades.Apagado:
            velocidadEnNombre = "Apagado"
            velocidad = Velocidades.VelocidadBaja
            
        case Velocidades.VelocidadBaja:
            velocidadEnNombre = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
            
        case Velocidades.VelocidadMedia:
            velocidadEnNombre = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
            
        default:
            velocidadEnNombre = "Velocidad alta"
            velocidad = Velocidades.VelocidadMedia
            
        }
        
        return (velocidadActualDelAuto, velocidadEnNombre)
        
    }
    
}


//Prueba de la clase
var automovil = Auto()

for ( var i = 1; i <= 20; i++){
    print(automovil.cambioDeVelocidad())
    
}