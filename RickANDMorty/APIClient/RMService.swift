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
    static let share = RMService()
    
    private init(){}
    
    //send API Call
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
