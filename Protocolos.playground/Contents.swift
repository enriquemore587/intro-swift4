import UIKit

//Protocolos

protocol Trabajador {
    func trabajar()
}

class Caminador {
    func caminar() {
        print("Camino")
    }
}

struct Ejecutivos : Trabajador {
    func trabajar() {
        print("Estoy trabajando")
    }
}


class Programadores : Caminador, Trabajador {
    func trabajar() {
        print("Programando")
    }
}

class Estudiante {
    var nombre : String
    var edad : Int
    var estudia : Bool
    
    init(nombre : String, edad : Int, estudia : Bool) {
        self.nombre = nombre
        self.edad = edad
        self.estudia = estudia
    }
}


extension Estudiante {
    func saludar() {
        print("Hola")
    }
}

var alumno = Estudiante(nombre: "JOSE ENRIQUE", edad: 25, estudia: true)
