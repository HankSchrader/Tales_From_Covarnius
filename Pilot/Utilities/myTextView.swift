//
//  myTextView.swift
//  Pilot
//
//  Created by Erik Mikac on 3/20/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class myTextView: UITextView {
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.backgroundColor = UIColor.green as! CGColor
        }
    }
}

