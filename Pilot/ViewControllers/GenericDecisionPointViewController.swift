//
//  GenericDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GenericDecisionPointViewController: Chapter3ViewController {

    @IBOutlet var noHomeworkButton: UIView!
    @IBOutlet weak var dissectBrainButton: NavButton!
    @IBOutlet weak var chap2_4TextBox: UITextView!
    @IBOutlet weak var hapalStanceTextBox: UITextView!
    @IBOutlet weak var someSortOfMistake: UITextView!
    @IBOutlet weak var gettingShadySneakIntoAmbassadorHouseTextBox: UITextView!

    @IBOutlet weak var warMonger1TextBox: UITextView!
    
    @IBOutlet weak var chronoKnowsTheLayoutTextBox: UITextView!
    @IBOutlet weak var chapter5_2TextBox: UITextView!
    @IBOutlet weak var chapter5_7TextBox: UITextView!
    @IBOutlet weak var chapter6_7TextBox: UITextView!
    @IBOutlet weak var chapter6_7AmbassadorTextBox: UITextView!
    @IBOutlet weak var jigsUpChoiceTextBox: UITextView!
    @IBOutlet weak var doNotAskAboutCCCTextBox: UITextView!
    @IBOutlet weak var whatShouldGrowlicsEatTextBox: UITextView!
    @IBOutlet weak var chapter5_5TextBox: UITextView!
    @IBOutlet weak var twoDiplomats2TextBox: UITextView!
    @IBOutlet weak var twoDiplomats4TextBox: UITextView!
    @IBOutlet weak var twoDiplomats5TextBox: UITextView!
    @IBOutlet weak var twoDiplomats14TextBox: UITextView!
    
    @IBOutlet weak var hyperSleep0TextBox: UITextView!
    @IBOutlet weak var clog4TextBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let width = self.view.frame.size.width
        self.chap2_4TextBox.changeFontSizeByDevice(width: width)
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         self.chap2_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
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
        }
        else if segue.destination is Chapter3PageViewController
        {
            let vc = segue.destination as? Chapter3PageViewController
            vc?.segueID = segue.identifier
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
