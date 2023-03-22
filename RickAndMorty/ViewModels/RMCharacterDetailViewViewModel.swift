//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 18.03.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
}
