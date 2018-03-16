//
//  ChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Begin button
    //Start from beginning button. This will trigger entry to the last view
    func createOption1Button(option: String?) {
        let button = UIButton()
        button.setTitle("Start From The Beginning!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/3, width: 300, height: 36)
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.sendSubview(toBack: button)
        button.addTarget(self, action: #selector(ViewController.goToChapter1(_:)), for: UIControlEvents.touchUpInside)
        
    }
    
    //MARK: Delete button
    func createOption2Button(option: String?) {
        let button = UIButton()
        button.setTitle("Delete Data", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.25, width: 300, height: 36)
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.sendSubview(toBack: button)
        button.addTarget(self, action: #selector(ViewController.alertForDelete(_:)), for: UIControlEvents.touchUpInside)
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
