//
//  GenericDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GenericDecisionPointViewController: ChapterViewController {
    var segueID: String = ""
    var previousRID: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadBorderColor()
        loadBorderWidth(borderWidth: 3.0)
        loadCornerRadius(cornerRadius: 15.0)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let width = self.view.frame.size.width
        self.chap2_4TextBox?.changeFontSizeByDevice(width: width)
        self.turnBackTextBox?.changeFontSizeByDevice(width: width)
        self.katonian3TextBox?.changeFontSizeByDevice(width: width)
        
        self.atTheRanch_4TextBox?.changeFontSizeByDevice(width: width)
        self.hapalStanceTextBox?.changeFontSizeByDevice(width: width)
        self.someSortOfMistake?.changeFontSizeByDevice(width: width)
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.changeFontSizeByDevice(width: width)
        self.warMonger1TextBox?.changeFontSizeByDevice(width: width)
        self.chronoKnowsTheLayoutTextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_2TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_7TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_7TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_7AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.jigsUpChoiceTextBox?.changeFontSizeByDevice(width: width)
        self.doNotAskAboutCCCTextBox?.changeFontSizeByDevice(width: width)
        
        self.whatShouldGrowlicsEatTextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_5TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_3TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats2TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats4TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_2Ambassador?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats14TextBox?.changeFontSizeByDevice(width: width)
        self.hyperSleep0TextBox?.changeFontSizeByDevice(width: width)
        self.clog4TextBox?.changeFontSizeByDevice(width: width)

    
       
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.chap2_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.turnBackTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.atTheRanch_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalStanceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.someSortOfMistake?.setContentOffset(CGPoint.zero, animated: true)
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.warMonger1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chronoKnowsTheLayoutTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter5_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_2Ambassador?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter6_7AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.jigsUpChoiceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.doNotAskAboutCCCTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.whatShouldGrowlicsEatTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.twoDiplomats2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.twoDiplomats14TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hyperSleep0TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog4TextBox?.setContentOffset(CGPoint.zero, animated: true)
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
    
    override func loadBorderColor() {
        let Color = UIColor.lightGray
        let myColor = Color.cgColor
        self.chap2_4TextBox?.layer.borderColor = myColor
        self.turnBackTextBox?.layer.borderColor = myColor
        self.katonian3TextBox?.layer.borderColor = myColor
        
        self.atTheRanch_4TextBox?.layer.borderColor = myColor
        self.hapalStanceTextBox?.layer.borderColor = myColor
        self.someSortOfMistake?.layer.borderColor = myColor
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.borderColor = myColor
        self.warMonger1TextBox?.layer.borderColor = myColor
        self.chronoKnowsTheLayoutTextBox?.layer.borderColor = myColor
        
        self.chapter5_2TextBox?.layer.borderColor = myColor
        self.chapter5_7TextBox?.layer.borderColor = myColor
        self.chapter6_7TextBox?.layer.borderColor = myColor
        
        self.chapter6_7AmbassadorTextBox?.layer.borderColor = myColor
        self.jigsUpChoiceTextBox?.layer.borderColor = myColor
        self.doNotAskAboutCCCTextBox?.layer.borderColor = myColor
        
        self.whatShouldGrowlicsEatTextBox?.layer.borderColor = myColor
        self.chapter5_5TextBox?.layer.borderColor = myColor
        self.chap3_3TextBox?.layer.borderColor = myColor
        
        self.twoDiplomats2TextBox?.layer.borderColor = myColor
        self.twoDiplomats4TextBox?.layer.borderColor = myColor
        self.twoDiplomats5TextBox?.layer.borderColor = myColor
        self.chapter6_2Ambassador?.layer.borderColor = myColor
        
        self.twoDiplomats14TextBox?.layer.borderColor = myColor
        self.hyperSleep0TextBox?.layer.borderColor = myColor
        self.clog4TextBox?.layer.borderColor = myColor
        
    }
    
    override func loadBorderWidth(borderWidth: CGFloat!) {
        self.chap2_4TextBox?.layer.borderWidth = borderWidth
        self.turnBackTextBox?.layer.borderWidth = borderWidth
        self.katonian3TextBox?.layer.borderWidth = borderWidth
        
        self.atTheRanch_4TextBox?.layer.borderWidth = borderWidth
        self.hapalStanceTextBox?.layer.borderWidth = borderWidth
        self.someSortOfMistake?.layer.borderWidth = borderWidth
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.borderWidth = borderWidth
        self.warMonger1TextBox?.layer.borderWidth = borderWidth
        self.chronoKnowsTheLayoutTextBox?.layer.borderWidth = borderWidth
        
        self.chapter5_2TextBox?.layer.borderWidth = borderWidth
        self.chapter5_7TextBox?.layer.borderWidth = borderWidth
        self.chapter6_7TextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_7AmbassadorTextBox?.layer.borderWidth = borderWidth
        self.jigsUpChoiceTextBox?.layer.borderWidth = borderWidth
        self.doNotAskAboutCCCTextBox?.layer.borderWidth = borderWidth
        
        self.whatShouldGrowlicsEatTextBox?.layer.borderWidth = borderWidth
        self.chapter5_5TextBox?.layer.borderWidth = borderWidth
        self.chap3_3TextBox?.layer.borderWidth = borderWidth
        
        self.twoDiplomats2TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats4TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats5TextBox?.layer.borderWidth = borderWidth
        self.chapter6_2Ambassador?.layer.borderWidth = borderWidth
        
        self.twoDiplomats14TextBox?.layer.borderWidth = borderWidth
        self.hyperSleep0TextBox?.layer.borderWidth = borderWidth
        self.clog4TextBox?.layer.borderWidth = borderWidth
        
    }
    
    override func loadCornerRadius(cornerRadius: CGFloat!) {
        
        self.chap2_4TextBox?.layer.cornerRadius = cornerRadius
        self.turnBackTextBox?.layer.cornerRadius = cornerRadius
        self.katonian3TextBox?.layer.cornerRadius = cornerRadius
        
        self.atTheRanch_4TextBox?.layer.cornerRadius = cornerRadius
        self.hapalStanceTextBox?.layer.cornerRadius = cornerRadius
        self.someSortOfMistake?.layer.cornerRadius = cornerRadius
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.cornerRadius = cornerRadius
        self.warMonger1TextBox?.layer.cornerRadius = cornerRadius
        self.chronoKnowsTheLayoutTextBox?.layer.cornerRadius = cornerRadius
        
        self.chapter5_2TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_7TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_7TextBox?.layer.cornerRadius = cornerRadius
        
        self.chapter6_7AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.jigsUpChoiceTextBox?.layer.cornerRadius = cornerRadius
        self.doNotAskAboutCCCTextBox?.layer.cornerRadius = cornerRadius
        
        self.whatShouldGrowlicsEatTextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_5TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_3TextBox?.layer.cornerRadius = cornerRadius
        
        self.twoDiplomats2TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats4TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_2Ambassador?.layer.cornerRadius = cornerRadius
        
        self.twoDiplomats14TextBox?.layer.cornerRadius = cornerRadius
        self.hyperSleep0TextBox?.layer.cornerRadius = cornerRadius
        self.clog4TextBox?.layer.cornerRadius = cornerRadius
       
        
 
    }
    
  
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
    @IBOutlet weak var chapter6_2Ambassador: UITextView!
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

}
