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

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)

        // Do any additional setup after loading the view.
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
