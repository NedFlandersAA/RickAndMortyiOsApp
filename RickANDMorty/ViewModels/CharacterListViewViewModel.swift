//
//  CharacterListViewViewModel.swift
//  RickANDMorty
//
//  Created by Carlo Fontolan on 18/04/24.
//

import Foundation

struct CharacterListViewViewModel{
    
    func fetchCharacters(){
        RMService.shared.execute(.ListCharactersRequests,
                                 expecting: RMGetAllCharactersResponse.self) {result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.pages))
                print("Pages Result Count: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
            }
    }
}
