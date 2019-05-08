//
//  HomeworldVC.swift
//  StarTrivia
//
//  Created by Juan Chavez on 5/6/19.
//  Copyright © 2019 Juan Chavez Montes. All rights reserved.
//

import UIKit

class HomeworldVC: UIViewController, PersonProtocol {
    
    var person: Person!
    let api = HomeworldApi()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var terrainLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
        api.getHomeworld(url: person.homeworldUrl) { (homeworld) in
            if let homeworld = homeworld {
                self.setupUI(homeworld: homeworld)
            }
        }
    }
    
    func setupUI(homeworld: Homeworld) {
        nameLabel.text = homeworld.name
        climateLabel.text = homeworld.climate
        terrainLabel.text = homeworld.terrain
        populationLabel.text = homeworld.population
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
