//
//  RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 29.10.2023.
//

import Foundation

enum RMSearchResultViewModel {
    
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
    
    
//    typealias ResultType = T
//    var results: [ResultType]
}
