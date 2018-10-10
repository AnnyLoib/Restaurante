//
//  Datos.swift
//  Restaurante
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Datos {
    static var restaurantes: [Restaurante] = [
    Restaurante(nombre: "Mochomos", imagenLista: UIImage(named: "MochomosLista")!, imagenDetalle: UIImage(named: "MochomosDetalle")!, descripcion: "Excelente lugar para degustar los mejores cortes de la mejor carne de calidad de la región", comentarios: [Comentario(usuario: "Ana Luisa", comentario: "Excelente servicio y muy buen servicio"), Comentario(usuario: "Javier", comentario: "Muy buen lugar para ir")]),
    Restaurante(nombre: "Sushilito", imagenLista: UIImage(named: "SushilitoLista")!, imagenDetalle: UIImage(named: "SushilitoDetalle")!, descripcion: "Si quieres degustar los mejores platillos orientales", comentarios: [Comentario(usuario: "Mariana", comentario: "Muy buena comida"), Comentario(usuario: "Andrea", comentario: "Se tardan mucho")])]
}
