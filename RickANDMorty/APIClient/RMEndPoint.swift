//
//  RMEndPoint.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 13/04/24.
//

import Foundation

//represent unique API endpoint
@frozen enum RMEndPoint : String{
    //endpoint to get character info
    case character //"character"
    //endpoint to get location info
    case location
    //endpoint to get episode info
    case episode
}
