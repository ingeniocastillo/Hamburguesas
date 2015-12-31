//
//  Datos.swift
//  Hamburguesas
//
//  Created by NIMROD CASTILLO ALCÁNTARA on 31/12/15.
//  Copyright © 2015 NIMROD CASTILLO ALCÁNTARA. All rights reserved.
//

import Foundation

class ColeccionDePaises{
    let paises : [String]
    let monedas : [String]
    
    init(){
        paises = ["México", "Estados Unidos", "Brasil", "Guatemala", "Honduras", "Argentina", "Chile", "Canada", "Belice", "Bolivia" , "Jamaica" , "Costa Rica", "Japón" , "China" , "India" , "Inglaterra" , "Francia" , "Italia" , "Alemania" , "Holanda" , "Corea del sur" , "Bélgica" , "España" ]
        
        monedas = ["Pesos Mexicanos", "Dólares", "Reales Brasileños", "Quetzales", "Lempiras", "Pesos Argentinos", "Pesos Chilenos", "Dólares canadienses", "Dólares beliceños", "Bolivianos" , "Dólares Jamaiquinos" , "Colones", "Yens" , "Renminbis" , "Rupias indias" , "Libras" , "Euros" , "Euros" , "Euros" , "Euros" , "Wons" , "Euros" , "Euros" ]
    }
    
    func obtenerPaisYMoneda() -> (String, String){
        let posicion : Int
        posicion = Int(rand()) % paises.count
        return ( paises[posicion], monedas[posicion])
    }
}

class ColeccionDeHamburguesas{
    let hamburguesas : [String]
    
    init(){
        hamburguesas = ["sencilla", "doble", "sencilla con queso", "doble con queso", "sencilla con tocino", "sencilla con tocino y queso", "doble con tocino", "doble con tocino y queso", "de pollo", "de arrachera", "de pavo", "de pollo con queso", "de arrachera con queso", "de pavo con queso", "Mexicana", "Big Crunch", "Mexicana con doble carne", "Mexicana con queso extra", "de soya", "de soya con queso"]
    }
    
    func obtenerHamburguesa() -> String{
        let posicion : Int
        posicion = Int(rand()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}