//
//  ViewController.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 11/5/18.
//  Copyright © 2018 Juan Chavez Montes. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var homeworldButton: UIButton!
    @IBOutlet weak var vehiclesButton: UIButton!
    @IBOutlet weak var starshipsButton: UIButton!
    @IBOutlet weak var filmsButton: UIButton!
    
    var personApi = PersonApi()
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func randomClicked(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.setupView(person: person)
                self.person = person
            }
        }
    }
    
    func setupView(person: Person) {
        nameLbl.text = person.name
        heightLbl.text = person.height
        massLbl.text = person.mass
        hairLbl.text = person.hair
        birthYearLbl.text = person.birthYear
        genderLbl.text = person.gender
        
        homeworldButton.isEnabled = !person.homeworldUrl.isEmpty
        starshipsButton.isEnabled = !person.starshipUrls.isEmpty
        vehiclesButton.isEnabled = !person.vehicleUrls.isEmpty
        filmsButton.isEnabled = !person.filmUrls.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if var destination = segue.destination as? PersonProtocol {
            destination.person = person
        }
        /*switch segue.identifier {
        case Segue.homeworld.rawValue:
            if let destination = segue.destination as? HomeworldVC {
                destination.person = self.person
            }
        case Segue.vehicles.rawValue:
            if let destination = segue.destination as? VehiclesVC {
                destination.person = self.person
            }
        case Segue.starships.rawValue:
            if let destination = segue.destination as? StarshipsVC {
                destination.person = self.person
            }
        case Segue.films.rawValue:
            if let destination = segue.destination as? FilmsVC {
                destination.person = self.person
            }
        default:
            break
        }*/
    }
    
    /*enum Segue : String {
        case homeworld = "toHomeworld"
        case vehicles = "toVehicles"
        case starships = "toStarships"
        case films = "toFilms"
    }*/
}

protocol PersonProtocol {
    var person: Person! { get set }
}

