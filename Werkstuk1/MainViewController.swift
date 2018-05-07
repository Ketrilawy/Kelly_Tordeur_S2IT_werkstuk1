//
//  ViewController.swift
//  Werkstuk1
//
//  Created by student on 06/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

var personen: [Persoon] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let persoon1 = Persoon(naam: "Sanchez", voorNaam: "Beth", foto: "beth.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033362)
    let persoon2 = Persoon(naam: "Sanchez", voorNaam: "Rick", foto: "rick.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033363)
    let persoon3 = Persoon(naam: "Smith", voorNaam: "Morty", foto: "morty.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033364)
    let persoon4 = Persoon(naam: "Smith", voorNaam: "Summer", foto: "summer.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033365)
    let persoon5 = Persoon(naam: "Smith", voorNaam: "Jerry", foto: "jerry.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033366)
    let persoon6 = Persoon(naam: "Poopy Butthole", voorNaam: "Mister", foto: "butt.jpg", adres: "20-144 E Cabot Ln, Westbury, NY 11590, USA", latitude: 40.746259, longitude: -73.54742864392216, telefoon: 0400033367)
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(personen.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.foto.image = UIImage(named: personen[indexPath.row].foto)
        cell.naam.text = personen[indexPath.row].voorNaam + " " + personen[indexPath.row].naam
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let controller = segue.destination  as! DetailViewController
            let row = (sender as! NSIndexPath).row;
            let persoon = personen[row]
            controller.persoonvoorSegue = persoon
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personen.append(persoon1)
        personen.append(persoon2)
        personen.append(persoon3)
        personen.append(persoon4)
        personen.append(persoon5)
        personen.append(persoon6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

