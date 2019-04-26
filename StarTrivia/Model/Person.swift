//
//  Person.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 11/19/18.
//  Copyright © 2018 Juan Chavez Montes. All rights reserved.
//

import Foundation

struct Person: Codable {
    let name: String
    let height: String
    let mass: String
    let hair: String
    let birthYear: String
    let gender: String
    let homeworldUrl: String
    let filmUrls: [String]
    let vehicleUrls: [String]
    let starshipUrls: [String]
    
    enum CodingKeys : String, CodingKey {
        case name
        case height
        case mass
        case hair = "hair_color"
        case birthYear = "birth_year"
        case gender
        case homeworldUrl = "homeworld"
        case filmUrls = "films"
        case vehicleUrls = "vehicles"
        case starshipUrl = "starships"
    }
    
    init (name: String, height: String, mass: String, hair: String, birthYear: String, gender: String, homeworldUrl: String, filmUrls: [String], vehicleUrls: [String], starshipUrls:[String]) {
        self.name = name
        self.height = height
        self.mass = mass
        self.hair = hair
        self.birthYear = birthYear
        self.gender = gender
        self.homeworldUrl = homeworldUrl
        self.filmUrls = filmUrls
        self.vehicleUrls = vehicleUrls
        self.starshipUrls = starshipUrls
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        height = try values.decode(String.self, forKey: .height)
        mass = try values.decode(String.self, forKey: .mass)
        hair = try values.decode(String.self, forKey: .hair)
        birthYear = try values.decode(String.self, forKey: .birthYear)
        gender = try values.decode(String.self, forKey: .gender)
        homeworldUrl = try values.decode(String.self, forKey: .homeworldUrl)
        filmUrls = try values.decode([String].self, forKey: .filmUrls)
        vehicleUrls = try values.decode([String].self, forKey: .vehicleUrls)
        starshipUrls = try values.decode([String].self, forKey: .starshipUrl)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: CodingKeys.name)
        try container.encode(height, forKey: CodingKeys.height)
        try container.encode(mass, forKey: CodingKeys.mass)
        try container.encode(hair, forKey: CodingKeys.hair)
        try container.encode(birthYear, forKey: CodingKeys.birthYear)
        try container.encode(gender, forKey: CodingKeys.gender)
        try container.encode(homeworldUrl, forKey: CodingKeys.homeworldUrl)
        try container.encode(filmUrls, forKey: CodingKeys.filmUrls)
        try container.encode(vehicleUrls, forKey: CodingKeys.vehicleUrls)
        try container.encode(starshipUrls, forKey: CodingKeys.starshipUrl)
    }
}
