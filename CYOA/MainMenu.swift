//
//  MainMenu.swift
//  CYOA
//
//  Created by Erik Mikac on 2/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit


class MainMenu: UIViewController {
    
    var menuShowing = false

    @IBOutlet weak var leadingConstant: NSLayoutConstraint!
    @IBOutlet weak var menuWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MusicHelper.sharedHelper.playBackgroundMusic()
    }
    

    @IBAction func showMenu(_ sender: Any) {
        if(menuShowing) {
            leadingConstant.constant = -160
        }
        else {
            leadingConstant.constant = 0
        }
        menuShowing = !menuShowing
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
