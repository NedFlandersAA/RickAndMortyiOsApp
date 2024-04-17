//
//  RMLocation.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 06/04/24.
//

import Foundation

struct RMLocation : Codable {
    
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
