//
//  ChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {
    //FOR TOMORROW. LEAVING OFF ON "BORROW" FROM COVARNIAN AMBASSADOR ARC.

    
    
    static let chapterVC = ChapterViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        goToChapterSelectAction()
       
        self.chapter4?.setContentOffset(CGPoint.zero, animated: true)
      

        
        // Do any additional setup after loading the view.
    }

   
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         let width = self.view.frame.size.width
        self.IntroductionTextBox?.changeFontSizeByDevice(width: width)
        self.chronoGrinsAtYou?.setContentOffset(CGPoint.zero, animated: false)
        self.youLookAroundTheLab?.setContentOffset(CGPoint.zero, animated: false)
        self.enoughZanarq?.setContentOffset(CGPoint.zero, animated: false)
        self.greenFizzeGameOver?.setContentOffset(CGPoint.zero, animated: false)
        self.glimmerOfHope?.setContentOffset(CGPoint.zero, animated: false)
        self.possibleButRisky?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter2?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter3?.setContentOffset(CGPoint.zero, animated: false)
        self.Chapter3_1?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter3page2?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter4?.setContentOffset(CGPoint.zero, animated: true)
        self.OnTheRanchChapter?.setContentOffset(CGPoint.zero, animated: false)
        self.hapalStanceChapter?.setContentOffset(CGPoint.zero, animated: false)
        self.EarthsGreatestScientist?.setContentOffset(CGPoint.zero, animated: false)
        self.EarthsGreatestScientist2?.setContentOffset(CGPoint.zero, animated: false)
        self.earthsGreatestScientist3?.setContentOffset(CGPoint.zero, animated: false)
        self.whichFizz?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter4Page2?.setContentOffset(CGPoint.zero, animated: false)
      
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.chapter4?.setContentOffset(CGPoint.zero, animated: true)
        
    }

    
    func goToChapterSelectAction() {
        let button = NavButton()
        // let button = CustomButton(value: 100) // also works
        button.setTitle(nil, for: .normal)
        
        // auto layout
        // button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: -100, y: 30, width: 300, height: 40)
        view.addSubview(button)
        button.addTarget(self, action: #selector(self.goToChapterSelect(_:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func goToChapterSelect(_ sender: Any?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Chapter Select")
        self.show(vc, sender: self)
    }
    @IBOutlet weak var chap2_0TextBox: myTextView!
    @IBOutlet weak var chap2_1TextBox: myTextView!
    @IBOutlet weak var chap2_2TextBox: UITextView!
    @IBOutlet weak var chap2_3TextBox: UITextView!
    @IBOutlet weak var chap3_0: UITextView!
    @IBOutlet weak var chap3_1TextBox: UITextView!
    @IBOutlet weak var chap3_15TextBox: UITextView! //Not 15. 1.5
    @IBOutlet weak var chap3_2TextBox: UITextView!
    @IBOutlet weak var chap3_25TextBox: UITextView! //Not 25 2.5
    @IBOutlet weak var katonian1_point5TextBox: UITextView!
    @IBOutlet weak var katonian1TextBox: myTextView!
    @IBOutlet weak var katonian2TextBox: myTextView!
    @IBOutlet weak var katonian2Point5TextBox: myTextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_1TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_2TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_2Point5TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_1TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_2TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_2Point5TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_3TextBox: UITextView!
    @IBOutlet weak var noTrust_1TextBox: UITextView!
    @IBOutlet weak var noTrust1Point5TextBox: UITextView!
    @IBOutlet weak var trust1TextBox: UITextView!
    @IBOutlet weak var trust1Point5TextBox: UITextView!
    @IBOutlet weak var hapalStance1TextBox: UITextView!
    @IBOutlet weak var letHapalDownTextBox: UITextView!
    @IBOutlet weak var letHapalDown2TextBox: UITextView!
    @IBOutlet weak var hapalRescueTextBox: UITextView!
    @IBOutlet weak var hapalRescue2TextBox: UITextView!
    @IBOutlet weak var hapalRescue2AgainTextBox: UITextView!
    @IBOutlet weak var hapalRescue3TextBox: UITextView!
    @IBOutlet weak var chap4_1TextBox: UITextView!
    @IBOutlet weak var chapt4_2TextBox: UITextView!
    @IBOutlet weak var chap4_3TextBox: UITextView!
    @IBOutlet weak var imNotAScientistPoint5TextBox: UITextView!
    @IBOutlet weak var youGoofedPoint5TextBox: UITextView!
    @IBOutlet weak var youGoofedTextBox: UITextView!
   
    @IBOutlet weak var chapter51Point5TextBox: UITextView!
    @IBOutlet weak var chapter5_1TextBox: UITextView!
    @IBOutlet weak var Chapter5_3TextBox: UITextView!
    @IBOutlet weak var chapter5_4TextBox: UITextView!
    @IBOutlet weak var chapter5_4Point5TextBox: UITextView!
    @IBOutlet weak var chapter5Before5TextBox: UITextView!
    @IBOutlet weak var chapter5Before7TextBox: UITextView!
    @IBOutlet weak var chapter6_1TextBox: UITextView!
    @IBOutlet weak var chapter6_1Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_2TextBox: UITextView!
    @IBOutlet weak var chapter6_3TextBox: UITextView!
    @IBOutlet weak var chapter6_3Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_4TextBox: UITextView!
    @IBOutlet weak var Chapter_6_4_AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_4Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_5TextBox: UITextView!
    @IBOutlet weak var chapter6_5AmbassadorTextBox: UITextView!
    @IBOutlet weak var counciChamberSneakTextBox: UITextView!
    @IBOutlet weak var chapter6_6TextBox: UITextView!
    @IBOutlet weak var CCCExplanationTextBox: UITextView!
    @IBOutlet weak var ramShipTextBox: UITextView!
    @IBOutlet weak var ramShip2TextBox: UITextView!
    @IBOutlet weak var fetchKey: UITextView!
    @IBOutlet weak var fetchKey2TextBox: UITextView!
    @IBOutlet weak var greenFizzTheEndTextBox: UITextView!
    @IBOutlet weak var JigsUpTextBox: UITextView!
    @IBOutlet weak var jigsUp1Point5TextBox: UITextView!
    @IBOutlet weak var yellowFizzTheEndTextBox: UITextView!
    
    @IBOutlet weak var chapter5Before2TextBox: UITextView!
    @IBOutlet weak var TurnBackTheEnd: UITextView!
    @IBOutlet weak var glimmerOfHope: UITextView!
    @IBOutlet weak var neverKnowTheEnd: UITextView!
    @IBOutlet weak var neverGiveUpTextBox: UITextView!
    @IBOutlet weak var almostGiveUpTextBox: UITextView!
    
    @IBOutlet weak var youLookAroundTheLab: UITextView!
    @IBOutlet weak var greenFizzeGameOver: UITextView!
    @IBOutlet weak var chronoGrinsAtYou: UITextView!
    @IBOutlet weak var possibleButRisky: UITextView!
    @IBOutlet weak var chapter4Page2: UITextView!
    @IBOutlet weak var earthsGreatestScientist3: UITextView!
    @IBOutlet weak var EarthsGreatestScientist2: UITextView!
    @IBOutlet weak var EarthsGreatestScientist: UITextView!
    @IBOutlet weak var Chapter3_1: UITextView!
    @IBOutlet weak var chapter2: UITextView!
    @IBOutlet weak var chapter3: UITextView!
    @IBOutlet weak var chapter4: UITextView!
    
    @IBOutlet weak var chapter3page2: UITextView!
    
    @IBOutlet weak var enoughZanarq: UITextView!
    @IBOutlet weak var whichFizz: UITextView!
    @IBOutlet weak var hapalStanceChapter: UITextView!
    @IBOutlet weak var OnTheRanchChapter: UITextView!
    @IBOutlet weak var IntroductionTextBox: myTextView!
}
