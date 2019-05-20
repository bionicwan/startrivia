//
//  Film.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 5/20/19.
//  Copyright © 2019 Juan Chavez Montes. All rights reserved.
//

import Foundation

struct Film : Codable {
    let title: String
    let episode: Int
    let crawl: String
    let director: String
    let producer: String
    let releaseDate: String
    
    enum CodingKeys: String, CodingKey {
        case title
        case episode = "episode_id"
        case crawl = "opening_crawl"
        case director
        case producer
        case releaseDate = "release_date"
    }
}
