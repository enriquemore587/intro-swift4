import UIKit

class Album {
    var nombre : String
    init(nombre : String) {
        self.nombre = nombre
    }
}

class AlbumEstudio : Album {
    var estudio : String
    init(nombre : String, estudio : String) {
        self.estudio = estudio
        super.init(nombre: nombre)
    }
}

class AlbumVivo : Album {
    var lugar : String
    init(nombre : String, lugar : String) {
        self.lugar = lugar
        super.init(nombre : nombre)
    }
}

var joseJose = AlbumEstudio(nombre: "Amar y Querer", estudio: "Estudios Churubusco")
var cancionesInfantiles = AlbumEstudio(nombre: "Salta & brinca", estudio: "Estudios Platanito")

var perreque = AlbumVivo(nombre: "Masizo contra el piso", lugar: "Estadio Azteca")

// Polimorfismo
var misAlbums : [Album] = [joseJose, cancionesInfantiles, perreque]
