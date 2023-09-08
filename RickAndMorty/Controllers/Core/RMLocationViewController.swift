//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Rita on 01.03.2023.
//

import UIKit

final class RMLocationViewController: UIViewController, RMLocationViewViewModelDelegate {
    
    private let primaryView = RMLocationView()
    
    private let viewModel = RMLocationViewViewModel()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(primaryView)
        view.backgroundColor = .systemBackground
        title = "Locations"
        addSearchButton()
        addConstraints()
        viewModel.delegate = self
        viewModel.fetchLocations()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
           primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
           primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
           primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
           primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc private func didTapSearch() {
//        let vc = RMSearchViewController(config: RMSearchViewController.Config(type: .character))
//        vc.navigationItem.largeTitleDisplayMode = .never
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - LocationViewModel Delegate
    
    func didFetchInitialLocations() {
        primaryView.configure(with: viewModel)
    }
}
