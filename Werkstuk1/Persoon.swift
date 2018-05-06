//
//  persoon.swift
//  Werkstuk1
//
//  Created by student on 06/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Persoon {
    var naam: String
    var voorNaam: String
    var foto: String
    var adres: String
    var latitude: Double
    var longitude: Double
    var telefoon: Int
    
    init(naam: String, voorNaam: String, foto: String, adres: String, latitude: Double, longitude: Double, telefoon: Int) {
        self.naam = naam
        self.voorNaam = voorNaam
        self.foto = foto
        self.adres = adres
        self.latitude = latitude
        self.longitude = longitude
        self.telefoon = telefoon
    }
}
