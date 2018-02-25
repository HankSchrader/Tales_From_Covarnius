//
//  MainMenuViewViewController.swift
//  CYOA
//
//  Created by Erik Mikac on 2/25/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class MainMenuViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let beginBtn = UIButton()
        view.backgroundColor = .yellow
        MusicHelper.sharedHelper.playBackgroundMusic()
        beginBtn.setTitle("Press", for: UIControlState.normal)
        beginBtn.translatesAutoresizingMaskIntoConstraints = false
        beginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        beginBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        beginBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        beginBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        view.addSubview(beginBtn)
        
        // Do any additional setup after loading the view.
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
