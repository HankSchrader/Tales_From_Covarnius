//
//  ViewController.swift
//  CYOA
//
//  Created by Erik Mikac on 2/10/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var menuShowing = false
    @IBOutlet var Valkyrie: UIImageView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func showMenu(_ sender: Any) {
        if(menuShowing) {
            self.leadingConstraint.constant = -160
        }
        else {
            self.leadingConstraint.constant = 0
        }
        menuShowing = !menuShowing
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

