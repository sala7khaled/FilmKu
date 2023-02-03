//
//  UIButton+Extensions.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

extension UIButton {
    
    /**
     Addin a localized title to button
     
     - parameter key: The key localized to be a title of button with .normal style
     */
    func setTitle(_ key: String) {
        self.setTitle(key.l(), for: .normal)
    }
    
    func applyShadow(radius: CGFloat = 10, color: UIColor = .primary) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = CGSize(width: 3.0, height: 5.0)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
    
    func pulse() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.7
        pulse.toValue = 1.0
        layer.add(pulse, forKey: "pulse")
    }
}
