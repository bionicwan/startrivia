//
//  Constants.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 11/19/18.
//  Copyright © 2018 Juan Chavez Montes. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor
let URL_BASE = "http://swapi.co/api/"
let PERSON_URL = URL_BASE + "people/"

typealias PersonResponseCompletion = (Person?) -> Void
typealias HomeworldResponseCompletion = (Homeworld?) -> Void
typealias VehicleResponseCompletion = (Vehicle?) -> Void
typealias StarshipResponseCompletion = (Starship?) -> Void
typealias FilmResponseCompletion = (Film?) -> Void
