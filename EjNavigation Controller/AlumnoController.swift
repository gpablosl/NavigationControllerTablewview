//
//  AlumnoController.swift
//  EjNavigation Controller
//
//  Created by Alumno on 22/09/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class AlumnoController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
            celda?.lblNombre.text = alumnos[indexPath.row].nombre
            celda?.lblCarrera.text = alumnos[indexPath.row].carrera
            celda?.lblMatricula.text = alumnos[indexPath.row].matricula
            return celda!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        alumnos.append(Alumno(nombre: "Max", matricula: "15647", carrera: "IPM", edad: 22))
        alumnos.append(Alumno(nombre: "Cesar", matricula: "64367", carrera: "ITM", edad: 21))
        alumnos.append(Alumno(nombre: "German", matricula: "35758", carrera: "TRE", edad: 21))

        
    }
}
