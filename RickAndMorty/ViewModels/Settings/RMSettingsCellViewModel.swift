//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 18.05.2023.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable{
    let id = UUID()
    
    // MARK: - Init
    
    private let type: RMSettingsOption
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    // MARK: - Public
    
    public var image: UIImage? {
        return type.iconImage
    }
    
    public var title: String {
        return type.displayTitle
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
}
