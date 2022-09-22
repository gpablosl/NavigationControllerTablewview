//
//  Alumno.swift
//  EjNavigation Controller
//
//  Created by Alumno on 22/09/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

class Alumno{
    var nombre : String
    var matricula : String
    var carrera : String
    var edad : Int


    init(nombre: String, matricula: String, carrera: String, edad: Int){
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.edad = edad
    }
}
