//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Rita on 13.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
