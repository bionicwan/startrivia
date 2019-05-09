//
//  Homeworld.swift
//  StarTrivia
//
//  Created by Juan Chavez on 5/8/19.
//  Copyright © 2019 Juan Chavez Montes. All rights reserved.
//

import Foundation
import Alamofire

struct Homeworld: Codable {
    let name: String
    let climate: String
    let terrain: String
    let population: String
}
