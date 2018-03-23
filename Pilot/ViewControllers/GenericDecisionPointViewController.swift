//
//  GenericDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GenericDecisionPointViewController: Chapter3ViewController {

    @IBOutlet weak var hapalStanceTextBox: UITextView!
    @IBOutlet weak var someSortOfMistake: UITextView!
    @IBOutlet weak var FetchKey: UITextView!
    @IBOutlet weak var gettingShady: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.FetchKey?.setContentOffset(CGPoint.zero, animated: false)
        self.someSortOfMistake?.setContentOffset(CGPoint.zero, animated: false)
        
        self.gettingShady?.setContentOffset(CGPoint.zero, animated: false)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction override func goToMainQuestAction(_ sender: Any) {
        dissectBrains.addTarget(self, action: #selector(self.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction override func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.segueID = segue.identifier!
        performSegue(withIdentifier: self.segueID, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.destination is FakeScientistArcPageViewController
        {
            let vc = segue.destination as? FakeScientistArcPageViewController
            vc?.segueID = segue.identifier!
        } else if segue.destination is Chapter4PageViewController {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is GoAsAmbassadorPageViewController
        {
            let vc = segue.destination as? GoAsAmbassadorPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is SneakOntoShipPageViewController
        {
            let vc = segue.destination as? SneakOntoShipPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is RiseAndShinePageViewController
        {
            let vc = segue.destination as? RiseAndShinePageViewController
            vc?.segueID = segue.identifier!
        }
            
        else if segue.destination is RaidOnCovarniusPageViewController {
            let vc = segue.destination as? RaidOnCovarniusPageViewController
            vc?.segueID = segue.identifier!
        }
        
        else if segue.destination is TheTwoDiplomatsPageViewController {
            let vc = segue.destination as? TheTwoDiplomatsPageViewController
            vc?.segueID = segue.identifier!
        }
        
        
    }
    

}
