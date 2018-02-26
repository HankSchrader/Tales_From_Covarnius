//
//  MainMenuViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBeginButton()
        MusicHelper.sharedHelper.playBackgroundMusic(resource: "MainMenuSong")
      
        
        
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
        print(view.frame.height)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.goToChapter1(_:)), for: UIControlEvents.touchUpInside)
        
       
        
    }
    
    @IBAction func goToChapter1(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Start From The Beginning!", sender: self)

    }
    
    
}


