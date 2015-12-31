//
//  ViewController.swift
//  Hamburguesas
//
//  Created by NIMROD CASTILLO ALCÁNTARA on 31/12/15.
//  Copyright © 2015 NIMROD CASTILLO ALCÁNTARA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()

    @IBOutlet weak var tipoDeHamburguesa: UILabel!
    @IBOutlet weak var nombreDePais: UILabel!
    @IBOutlet weak var precioAMostrar: UILabel!
    @IBOutlet weak var botonHamburguesas: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorDeFondo = colores.obtenerColorAleatorio()
        view.backgroundColor = colorDeFondo
        tipoDeHamburguesa.textColor = colorComplementario1(colorDeFondo)
        nombreDePais.textColor = colorComplementario2(colorDeFondo)
        precioAMostrar.textColor = colorComplementario2(colorDeFondo)
        botonHamburguesas.backgroundColor = colorComplementario1(colorDeFondo)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mostrarHamburguesa(sender: UIButton) {
        tipoDeHamburguesa.text = "Hamburguesa \(hamburguesas.obtenerHamburguesa())"
        
        let tuplaPaisYMoneda = paises.obtenerPaisYMoneda()
        nombreDePais.text = tuplaPaisYMoneda.0
        
        let precioAleatorio : Double = (1.0...10.0).random()
        precioAMostrar.text = "\(precioAleatorio.format(".2")) \(tuplaPaisYMoneda.1)"
        
        let colorDeFondo = colores.obtenerColorAleatorio()
        view.backgroundColor = colorDeFondo
        tipoDeHamburguesa.textColor = colorComplementario1(colorDeFondo)
        nombreDePais.textColor = colorComplementario2(colorDeFondo)
        precioAMostrar.textColor = colorComplementario2(colorDeFondo)
        botonHamburguesas.backgroundColor = colorComplementario1(colorDeFondo)
        botonHamburguesas.tintColor = colorComplementario2(colorDeFondo)
    }

}

