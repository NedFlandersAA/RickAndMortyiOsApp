//
//  RMService.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 13/04/24.
//

import Foundation

/// Primry API service object
final class RMService{
    //sngleton instance
    static let shared = RMService()
    
    private init(){}
    
    //send API Call
    //request : quequest instance
    //type" type of object we expected to get back
    //completition callback with data or error
    public func execute<T : Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T,Error>) -> Void){
                    
    }
}
