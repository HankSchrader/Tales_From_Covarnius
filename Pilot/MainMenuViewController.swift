//
//  MainMenuViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var menuShowing = false

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBeginButton()
        MusicHelper.sharedHelper.playBackgroundMusic(resource: "MainMenuSong")
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
      
        
        
    }
    let button = UIButton()
    
    //Start from beginning button. This will trigger entry to the last view
    func createBeginButton() {
        
        button.setTitle("Start From The Beginning!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.25, width: 300, height: 36)
    
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.sendSubview(toBack: button)
        button.addTarget(self, action: #selector(ViewController.goToChapter1(_:)), for: UIControlEvents.touchUpInside)
    }
    @IBAction func showMenu(_ sender: Any) {
        print(leadingConstraint.constant)
        if(menuShowing) {
            leadingConstraint.constant = -165
        }
        else {
            leadingConstraint.constant = 0
        }
        menuShowing = !menuShowing
    }
    
    @IBAction func goToChapter1(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Start From The Beginning!", sender: self)

    }
    
    
}


