//
//  myTextView.swift
//  Pilot
//
//  Created by Erik Mikac on 3/20/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class myTextView: UITextView {
    override func scrollRangeToVisible(_ range: NSRange) {
    self.scrollRangeToVisible(NSRange("0")!)
    self.setContentOffset(CGPoint.zero, animated: false)    }
}

