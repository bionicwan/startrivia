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
    
    var personApi = PersonApi()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession { (person) in
            if let person = person {
                print("person.name")
            }
        }
    }
}

