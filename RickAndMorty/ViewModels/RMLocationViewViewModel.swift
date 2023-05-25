//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 25.05.2023.
//

import Foundation

final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = []
    
    private var cellViewModels: [String] = []

    init() {
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listCharactersRequests, expepecting: String.self) { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
    
}
