//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Rita on 01.03.2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    //let status: String
    let species: String
    let type: String
    let gender: RMCharacterGender
    //let gender: String
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
