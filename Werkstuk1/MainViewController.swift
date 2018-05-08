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
    
    let beth = Persoon(naam: "Sanchez", voorNaam: "Beth", foto: "beth-01.jpg", adres: "20-144 E Cabot Ln, 1600 Westbury", latitude: 50.775679, longitude: 4.189059100000001, telefoon: 0400033362)
    let rick = Persoon(naam: "Sanchez", voorNaam: "Rick", foto: "rick-01.jpg", adres: "20-144 E Cabot Ln, 1600 Westbury", latitude: 50.785679, longitude: 4.199059100000001, telefoon: 0400033363)
    let morty = Persoon(naam: "Smith", voorNaam: "Morty", foto: "morty-01.jpg", adres: "20-144 E Cabot Ln, 1600 Westbury", latitude: 50.905679, longitude: 4.109059100000001, telefoon: 0400033364)
    let summer = Persoon(naam: "Smith", voorNaam: "Summer", foto: "summer-01.jpg", adres: "20-144 E Cabot Ln, 1600 Westbury", latitude: 50.705679, longitude: 4.159059100000001, telefoon: 0400033365)
    let jerry = Persoon(naam: "Smith", voorNaam: "Jerry", foto: "jerry-01.jpg", adres: "20-144 E Cabot Ln,1600 Westbury", latitude: 50.605679, longitude: 4.149059100000001, telefoon: 0400033366)
    let poopybutthole = Persoon(naam: "Poopy Butthole", voorNaam: "Mister", foto: "butt-01.jpg", adres: "20-144 E Cabot Ln, 1600 Westbury", latitude: 50.775679, longitude: 4.189059100000001, telefoon: 0400033367)
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(personen.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
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
        personen.append(beth)
        personen.append(rick)
        personen.append(morty)
        personen.append(jerry)
        personen.append(summer)
        personen.append(poopybutthole)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

