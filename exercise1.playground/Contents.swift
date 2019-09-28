import UIKit

// Declarar variables
var nombre = "Jose Enrique"

var numeroEntero = 12


var numeroDecimal = 15.5

var variableBool = true


variableBool = false

var otroNumeroEntero : Int

otroNumeroEntero = 567

var otroNumeroEntero2 : Int = 25

var nombre2 = nombre

nombre2 = "JOSE"

print(nombre)
print(nombre2)

var arregloNombres = [ "Gerardo", "Sofia", "Lalo", "Sandy"]

var arregloString : [String] = [""]

var arregloConConstructor = [String]()

var enteroConConstructor = Int()

var boolConstructor = Bool()

for letra in nombre {
    print(letra)
}

for _ in nombre {
    print(1)
}

for nombre in arregloNombres {
    print(nombre)
}

arregloNombres.insert("okokok", at:2)

print(arregloNombres)
