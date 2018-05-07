//
//  DetailViewController.swift
//  Werkstuk1
//
//  Created by student on 07/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

var fotoOmDoorTeSturen:String!

class DetailViewController: UIViewController {
    
    var persoonvoorSegue:Persoon!
    
    @IBOutlet var foto: UIImageView!
    @IBOutlet var naam: UILabel!
    @IBOutlet var telefoon: UILabel!
    @IBOutlet var adres: UILabel!
    @IBOutlet var map: MKMapView!
    @IBOutlet var locatie: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fotoOmDoorTeSturen = persoonvoorSegue.foto
        
        foto.image = UIImage(named:persoonvoorSegue.foto)
        naam.text = persoonvoorSegue.voorNaam + " " + persoonvoorSegue.naam
        telefoon.text = String(persoonvoorSegue.telefoon)
        adres.text = persoonvoorSegue.adres
        locatie.text = "Lat: " + String(persoonvoorSegue.latitude) + " Long: " + String(persoonvoorSegue.longitude)
        
        let coordinaten = CLLocationCoordinate2DMake(persoonvoorSegue.latitude, persoonvoorSegue.longitude)
        map.setRegion(MKCoordinateRegionMakeWithDistance(coordinaten, 2000, 2000), animated: true)
        let pin = Annotation(title: persoonvoorSegue.adres, subtitle: persoonvoorSegue.voorNaam + " " + persoonvoorSegue.naam, coordinate: coordinaten)
        map.addAnnotation(pin)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
