import UIKit

class Album {
    var nombre : String
    init(nombre : String) {
        self.nombre = nombre
    }
    
    func obtenerVentas() -> String {
        return "El album \(nombre) se vendió"
    }
}

class AlbumEstudio : Album {
    var estudio : String
    init(nombre : String, estudio : String) {
        self.estudio = estudio
        super.init(nombre: nombre)
    }
    override func obtenerVentas() -> String {
    return "El album de estudio \(nombre) se vendió super bien"
    }
}

class AlbumVivo : Album {
    var lugar : String
    init(nombre : String, lugar : String) {
        self.lugar = lugar
        super.init(nombre : nombre)
    }
    override func obtenerVentas() -> String {
        return "El album en vivo \(nombre) se vendió muy bien"
    }
}

var joseJose = AlbumEstudio(nombre: "Amar y Querer", estudio: "Estudios Churubusco")
var cancionesInfantiles = AlbumEstudio(nombre: "Salta & brinca", estudio: "Estudios Platanito")

var perreque = AlbumVivo(nombre: "Masizo contra el piso", lugar: "Estadio Azteca")

// Polimorfismo
var albums : [Album] = [joseJose, cancionesInfantiles, perreque]

for album in albums {
    print(album.obtenerVentas())
}
