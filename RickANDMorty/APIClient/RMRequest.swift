//
//  RMRequest.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 13/04/24.
//

import Foundation

// Object that represent a single API call
final class RMRequest{
        
    //Base url
    //Enpoint
    //Path componenet
    //qry parameters
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndPoint
    
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    //https://rickandmortyapi.com/api/character/2
    
    
    //Construt for API request in straing format
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            //name=values&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string
    }
    
    public var url: URL?{
        return URL(string:urlString)
    }
    
    public let HttpMethod = "GET"
    
    
    //Construct Request
    public init(endpoint: RMEndPoint,
                pathComponents: Set<String>=[],
                queryParameters: [URLQueryItem]=[])
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
}
