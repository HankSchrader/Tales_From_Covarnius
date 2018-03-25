//
//  GenericDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GenericDecisionPointViewController: UIViewController {
    var segueID: String = ""
    var previousRID: String = ""
    
    @IBOutlet weak var turnBackTextBox: UITextView!
    @IBOutlet var noHomeworkButton: UIView!
    @IBOutlet weak var decisionButton: UIButton!
    @IBOutlet weak var dissectBrainButton: NavButton!
  
    @IBOutlet weak var chap2_4TextBox: UITextView!
    
    @IBOutlet weak var katonian3TextBox: UITextView!
    @IBOutlet weak var atTheRanch_4TextBox: UITextView!
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
    @IBOutlet weak var chap3_3TextBox: UITextView!
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
    
        self.katonian3TextBox?.changeFontSizeByDevice(width: width)
    
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         self.chap2_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian3TextBox?.setContentOffset(CGPoint.zero, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToMainQuestAction(_ sender: Any) {
     decisionButton.addTarget(self, action: #selector(self.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.segueID = segue.identifier!
        performSegue(withIdentifier: self.segueID, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.destination is FakeScientistArcPageViewController
        {
            let vc = segue.destination as? FakeScientistArcPageViewController
            vc?.segueID = segue.identifier!
        } else if segue.destination is BackAtTheRanchPageViewController {
           let vc = segue.destination as? BackAtTheRanchPageViewController
            vc?.segueID = segue.identifier!
        }
         else if segue.destination is Chapter3PageViewController
        {
            let vc = segue.destination as? Chapter3PageViewController
            vc?.segueID = segue.identifier
        }
        else if segue.destination is Chapter4PageViewController
        {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is RandomHapalStancePageViewController
        {
            
            let vc = segue.destination as? RandomHapalStancePageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is GoAsAmbassadorPageViewController
        {
            let vc = segue.destination as? GoAsAmbassadorPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is Chapter5PageViewController
        {
            let vc = segue.destination as? Chapter5PageViewController
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
