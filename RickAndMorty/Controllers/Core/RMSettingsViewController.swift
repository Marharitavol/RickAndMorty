//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Rita on 01.03.2023.
//

import UIKit

final class RMSettingsViewController: UIViewController {

    private let viewModel = RMSettingsViewViewModel(cellViewModels: RMSettingsOption.allCases.compactMap({
        return RMSettingsCellViewModel(type: $0)
    }))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Settings"
        
    }

}
