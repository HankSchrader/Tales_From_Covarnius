//
//  MainMenuViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {
    var menuShowing = false
    var completedChapter2 = false
    static let sharedHelper = ViewController()

    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        createBeginButton()
        createDeleteButton()
        createCreditsButton()
        
        MusicHelper.sharedHelper.playBackgroundMusic(resource: "MainMenuSong")
       
        
    }
    //MARK: viewWillAppear is always used for animation.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set the top label's animation alpha
        self.topLabel.alpha = 0
        self.bottomLabel.alpha = 0
        animateLabelTransition()
        
        
        
    }
    
    func animateLabelTransition() {
        // animate the alpha
        UIView.animate(withDuration: 4, animations: {self.topLabel.alpha = 1;
            self.bottomLabel.alpha = 1
        })
       
    }
   
    
    //Start from beginning button. This will trigger entry to the last view
    func createBeginButton() {
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
    
    func createDeleteButton() {
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
    
    func createCreditsButton() {
        let button = UIButton()
        button.setTitle("Credits", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.5, width: 300, height: 36)
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.sendSubview(toBack: button)
        button.addTarget(self, action: #selector(ViewController.alertForDelete(_:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func alertForDelete(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Are You Sure?", message: "All Progress Wil Be Gone!", preferredStyle: .alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            ChapterSelectViewController.chapterSelect.deleteAllData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            NSLog("Cancel Pressed")
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    //Method used to showMenu, when the chpaters used to be here. Keeping functionality for referenceh
  /*  @IBAction func showMenu(_ sender: Any) {
        print(leadingConstraint.constant)
        if(menuShowing) {
            leadingConstraint.constant = -165
        }
        else {
            leadingConstraint.constant = 0
        }
        menuShowing = !menuShowing
    }*/
    
    
    @IBAction func goToChapter1(_ sender: UIButton) {
        //reload the chapters
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            ChapterSelectViewController.chapterSelect.chapters = chapters
             ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }
        //segue to chapter 1
        performSegue(withIdentifier: "Start From The Beginning!", sender: self)

    }
    
    
}


