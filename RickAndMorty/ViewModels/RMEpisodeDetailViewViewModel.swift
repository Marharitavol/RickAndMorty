//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 28.03.2023.
//

import UIKit

class RMEpisodeDetailViewViewModel {

    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else { return }
        
    RMService.shared.execute(
        request, expepecting:
            RMEpisode.self) { result in
                switch result {
                    
                case .success(let success):
                    print("1234567")
                case .failure(let failure):
                    break
                }
            }
}
}
