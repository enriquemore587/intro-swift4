import UIKit

enum Clima {
    case soleado, lluvioso, nublado, vientoso
}

func getHeterStatus(clima : Clima) ->String?{
    if clima == Clima.lluvioso{
        return nil
    } else {
        return "Feliz"
    }
}

getHeterStatus(clima: .lluvioso)
getHeterStatus(clima: .nublado)
getHeterStatus(clima: .vientoso)

struct Persona {
    var nombre : String = ""
    var edad : Int = 0
    
    func saludar() {
        print("Hola")
    }
    
    func presentarse() {
        print("Hola ! mi nombre es \(nombre)")
    }
    
    mutating func cambiarNombre(newName : String ) {
        nombre = newName
    }
}

var persona = Persona(nombre: "Jose Enrique", edad: 25)

print(persona)

persona.presentarse()

var arregloDePersonas : [Persona] = [persona]
persona.cambiarNombre(newName: "Jose de Jesus")
arregloDePersonas.append(persona)

print(arregloDePersonas)
print(arregloDePersonas[1])
print(arregloDePersonas[1].nombre)



class PersonaClase {
    
    var nombre : String = ""
    var edad : Int = 0
    
    func saludar() {
        print("Hola")
    }
    
    func presentarse() {
        print("Hola ! mi nombre es \(nombre)")
    }
    
    func cambiarNombre(newName : String ) {
        nombre = newName
    }
}

var pruebaPersonaClase = PersonaClase()
pruebaPersonaClase.cambiarNombre(newName: "primero")
var pruebaPersona = Persona()
pruebaPersona.cambiarNombre(newName: "primero")


var personaClase = pruebaPersonaClase
var personaStructura = pruebaPersona


personaClase.cambiarNombre(newName: "otro")
personaStructura.cambiarNombre(newName: "otra estructura")

print(pruebaPersona.nombre)
print(pruebaPersonaClase.nombre)

print(personaClase.nombre)
print(personaStructura.nombre)

class Cantante {
    private var nombre : String
    private var edad : Int
    
    init( nombre : String, edad : Int ) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func cantar() {
        print("la la lalalala la lalala")
    }
}


class Rockero : Cantante {
    private var volumen : Int
    init(volumen : Int, nombre : String, edad : Int ) {
        self.volumen = volumen
        super.init(nombre: nombre, edad: edad)
    }
    
    override func cantar() {
        print("Grrr grrr grrr grrr")
    }
}

let cantante1 = Cantante(nombre: "Vicente Fernandez", edad: 45)
let cantante2 = Rockero(volumen : 100, nombre: "Alex Lora", edad: 55)


cantante1.cantar()
cantante2.cantar()


//Propiedades

class Person {
    
    init(ropa : String) {
        self.ropa = ropa
    }
    
    var ropa : String {
        willSet {
            update(msg: "Me cambiaré \(ropa) - newValue => \(newValue)")
        }
        didSet {
            update(msg: "Me cambie \(ropa) - oldValue => \(oldValue)")
        }
    }
}

func update(msg : String) {
    print(msg)
}

var p1 = Person(ropa: "Playera")

p1.ropa = "Pantalon"


struct Person2 {
    var edad : Int
    var edadEnPerrAños : Int {
        get {
            return edad * 7
        }
    }
}

let juanito = Person2(edad: 25)
juanito.edadEnPerrAños

struct RockFan {
    static var favoriteSong = "Callaita"
    var name  : String
    var edad : Int
    
}

var rockFan = RockFan(name: "SOFIA", edad: 23)
RockFan.favoriteSong
