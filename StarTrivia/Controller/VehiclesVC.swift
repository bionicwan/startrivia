//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Juan Chavez on 5/6/19.
//  Copyright © 2019 Juan Chavez Montes. All rights reserved.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
    var person: Person!
    var vehicles = [String]()
    let api = VehicleApi()
    var currentVehicle = 0
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var manufacturerLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var crewLbl: UILabel!
    @IBOutlet weak var passengersLbl: UILabel!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vehicles = person.vehicleUrls
        nextBtn.isEnabled = vehicles.count > 1
        guard let firstVehicle = vehicles.first else { return }
        getVehicle(url: firstVehicle)
        setButtonState()
    }
    
    func getVehicle(url: String) {
        api.getVehicle(url: url) { (vehicle) in
            if let vehicle = vehicle {
                self.setupView(vehicle: vehicle)
            }
        }
    }
    
    func setupView(vehicle: Vehicle) {
        nameLbl.text = vehicle.name
        modelLbl.text = vehicle.model
        manufacturerLbl.text = vehicle.manufacturer
        costLbl.text = vehicle.cost
        lengthLbl.text = vehicle.length
        speedLbl.text = vehicle.speed
        crewLbl.text = vehicle.crew
        passengersLbl.text = vehicle.passengers
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        currentVehicle -= 1
        getVehicle(url: vehicles[currentVehicle])
        setButtonState()
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        currentVehicle += 1
        getVehicle(url: vehicles[currentVehicle])
        setButtonState()
    }

    func setButtonState() {
        previousBtn.isEnabled = currentVehicle == 0 ? false : true
        nextBtn.isEnabled = currentVehicle == vehicles.count - 1 ? false : true
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
