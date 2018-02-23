//
//  ViewController.swift
//  CYOA
//
//  Created by Erik Mikac on 2/10/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Valkyrie: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

