//
//  MainMenuButtons.swift
//  CYOA
//
//  Created by Erik Mikac on 2/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

@IBDesignable class MainMenuButtons: UIButton {
    var menuShowing = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}

