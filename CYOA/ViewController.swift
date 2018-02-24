//
//  ViewController.swift
//  CYOA
//
//  Created by Erik Mikac on 2/10/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var Valkyrie: UIImageView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var x: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        x = leadingConstraint.constant
        print(x)
        print("Right above is the leadingConstraint")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getLeadingConstraint() -> CGFloat {
        return x
    }
    func setLeadingConstraint(new_constraint: CGFloat){
        leadingConstraint.constant = new_constraint
    }
    var name: String {
        get {
            //code to execute
            return self.name
        }
        set(new_name) {
           self.name = new_name
        }
    }

    

}

