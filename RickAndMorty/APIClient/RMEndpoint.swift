//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Rita on 02.03.2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    
    /// Endpoint to get character info
    case character
    case location
    case episode
}
