//
//  AgregarComentarioController.swift
//  Restaurante
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarComentarioController : UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtComentario: UITextField!
    
    var restaurante : Restaurante?
    
    @IBAction func doTapAgregar(_ sender: Any) {
        let nombre = txtNombre.text!
        let comentario = txtComentario.text!
        
        restaurante?.comentarios.append(Comentario(usuario: nombre, comentario: comentario))
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        
    }
    
}
