import UIKit

var str = "Hello, playground"


// Opcionals

var optionalString : String?

var stringNormal : String


stringNormal = "hola"
optionalString = "hola"


//stringNormal = nil
//optionalString = nil

if optionalString == nil {
    print("No hay valor")
} else {
    let strValidado = optionalString!
    print(strValidado)
}

// optional binding
if let strValidado = optionalString {
    print(strValidado)
} else {
    print("no Hay valor")
}


func dato()
{
    guard let number = optionalString else { return }
    print(number)
}

dato()
