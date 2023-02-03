//
//  NavController.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class NavController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        
        navigationBar.tintColor = .appWhite
        navigationBar.barTintColor = .appWhite
        
        let font = UIFont.boldSystemFont(ofSize: 20)
        let largeFont = UIFont.systemFont(ofSize: 38)
        
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: font
        ]
        
        navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: largeFont
        ]
        
        navigationBar.backIndicatorImage = UIImage(named: Images.back)
        navigationBar.backIndicatorTransitionMaskImage = UIImage(named: Images.back)
        
        navigationBar.prefersLargeTitles = false
        navigationBar.layoutIfNeeded()
    }
}
