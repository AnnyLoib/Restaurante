//
//  DetalleRestauranteController.swift
//  Restaurante
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleRestauranteController : UIViewController {
    var restaurante : Restaurante?
    
    @IBOutlet weak var lblUltimoComentario: UILabel!
    @IBOutlet weak var lblUltimoUsuario: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var imgDetalle: UIImageView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToListaComentarios" {
            let destino = segue.destination as! ListaComentariosController
        } else if segue.identifier == "goToAgregarComentario" {
            let destino = segue.destination as! AgregarComentarioController
            destino.restaurante = restaurante
        }
    }
    
    override func viewDidLoad() {
        lblDescripcion.text = restaurante?.descripcion
        imgDetalle.image = restaurante?.imagenDetalle
        self.title = restaurante?.nombre
        if(restaurante?.comentarios.count)! > 0 {
            let ultimoComentario = restaurante?.comentarios[(restaurante?.comentarios.count)! - 1]
            lblUltimoUsuario.text = ultimoComentario?.usuario
            lblUltimoComentario.text = ultimoComentario?.comentario
        }
    }
}
