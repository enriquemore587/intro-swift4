import UIKit

var str = "Hello, playground"


// funciones
func sumar() {
    5 + 3
}

func sumar(unNumero a:Int, conOtroNumero b:Int) ->Int{
    return a+b
}
sumar()

sumar(unNumero: 1, conOtroNumero: 2)




let arregloAny : [Any] = [1,2,3,"2a"]

var diccionario = ["nombre" : "JOSE", "paterno" : "VERGARA"]

diccionario["nombre"] = diccionario["nombre"]!+" ENRIQUE"

print(diccionario)

class Persona {}

var arrPErsona = [Persona]()


let edad = 90
switch edad {
case 0...20:
        print(edad)
case 21..<90:
            print(edad)
            fallthrough
default:
    print("edad")
}


var list = ["a", "b", "c"]

for (index, element) in list.enumerated() {
  print("Item \(index): \(element)")
}
