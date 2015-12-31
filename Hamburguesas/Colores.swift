//
//  Colores.swift
//  MasFeliz
//
//  Created by NIMROD CASTILLO ALCÁNTARA on 30/12/15.
//  Copyright © 2015 NIMROD CASTILLO ALCÁNTARA. All rights reserved.
//

import Foundation
import UIKit

func colorComplementario1(color : UIColor) -> UIColor {
    var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0
    color.getRed(&r, green: &g, blue: &b, alpha: &a)
    return UIColor(red: b, green: r, blue: g, alpha: a)
}

func colorComplementario2(color : UIColor) -> UIColor {
    var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0
    color.getRed(&r, green: &g, blue: &b, alpha: &a)
    return UIColor(red: g, green: b, blue: r, alpha: a)
}

struct Colores{
    let colores = [ UIColor(red: 211/255, green: 102/255, blue: 0/255, alpha: 1.0),
        UIColor(red: 229/255, green: 214/255, blue: 0/255, alpha: 1.0),
        UIColor(red: 144/255, green: 201/255, blue: 0/255, alpha: 1.0),
        UIColor(red: 36/255, green: 137/255, blue: 0/255, alpha: 1.0),
        UIColor(red: 0/255, green: 191/255, blue: 117/255, alpha: 1.0),
        UIColor(red: 0/255, green: 211/255, blue: 226/255, alpha: 1.0),
        UIColor(red: 0/255, green: 64/255, blue: 214/255, alpha: 1.0),
        UIColor(red: 111/255, green: 0/255, blue: 247/255, alpha: 1.0),
        UIColor(red: 167/255, green: 0/255, blue: 201/255, alpha: 1.0),
        UIColor(red: 160/255, green: 0/255, blue: 136/255, alpha: 1.0),
        UIColor(red: 239/255, green: 0/255, blue: 107/255, alpha: 1.0),
        UIColor(red: 183/255, green: 0/255, blue: 3/255, alpha: 1.0)]
    
    func obtenerColorAleatorio() -> UIColor{
        let posicion = (Int(rand()) % colores.count)
        return colores[posicion]
    }
}