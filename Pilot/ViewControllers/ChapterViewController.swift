//
//  ChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {

    static let chapterVC = ChapterViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        goToChapterSelectAction()
        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.chap2_0TextBox?.setContentOffset(CGPoint.zero, animated: false)
        
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: false)
        self.chap2_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_0?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_15TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_25TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1_point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalStance1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDownTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDown2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue2AgainTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescueTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chap4_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapt4_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap4_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        
        
    



//
//
//
//        chapt4_2TextBox
//        chap4_3TextBox
//        imNotAScientistPoint5TextBox
//        youGoofedPoint5TextBox
//        youGoofedTextBox
//        chapter51Point5TextBox
//        chapter5_1TextBox
//        Chapter5_3TextBox
//        chapter5_4TextBox
//        chapter5_4Point5TextBox
//        chapter5Before5TextBox
//        chapter5Before7TextBox
//        chapter6_1TextBox
//        Chapter6_1AmbassadorTextBox
//        chapter6_1Point5TextBox
//        chapter6_2TextBox
//        chapter6_3TextBox
//        chapter6_3Point5TextBox
//        chapter6_3AmbassadorTextBox
//        chapter6_4TextBox
//        Chapter_6_4_AmbassadorTextBox
//        chapter6_4Point5TextBox
//        chapter6_5TextBox
//        chapter6_5AmbassadorTextBox
//        Chapter6_6AmbassadorTextBox
//        chapter6_6Point5TextBox
//        Chapter6_before7TextBox
//        goodGrowlicsTextBox
//        TheyreViciousRunTextBox
//        theyreViciousRunTextBox_1Point5TextBox
//        theyreViciousRun_2TextBox
//        theyreViciousRun_2Point5TextBox
//        counciChamberSneakTextBox
//        councilChamberSneak_1Point5
//        chapter6_6TextBox
//        CCCExplanationTextBox
//        ramShipTextBox
//        ramShip2TextBox
//        ramShip2Point5TextBox
//        fetchKey
//        fetchKey2TextBox
//        greenFizzTheEndTextBox
//        JigsUpTextBox
//        jigsUp1Point5TextBox
//        yellowFizzTheEndTextBox
//        heSeemsSeriousTextBox
//        chapter5Before2TextBox
//        TurnBackTheEnd
//        glimmerOfHope
//        neverKnowTheEnd
//        neverGiveUpTextBox
//        almostGiveUpTextBox
//        checkWindowTextBox
//        checkDoorTextBox
//        twoDiplomats1TextBox
//        twoDiplomats3TextBox
//        noPeaceTextBox
//        noPeace2TextBox
//        twoDiplomats6TextBox
//        iceRayTextBox
//        twoDiplomats7TextBox
//        twoDiplomats8TextBox
//        twoDiplomats9TextBox
//        twoDiplomats10TextBox
//        twoDiplomats11TextBox
//        twoDiplomats12TextBox
//        twoDiplomats13TextBox
//        clog1TextBox
//        clog2TextBox
//        clog3TextBox
//        failedDistraction1TextBox
//        failedDistraction2TextBox
//        tookTheKeyTextBox
//        noKeyTakenTextBox
//        possibleButRisky
//        raidOnCovarnius1TextBox
//        raidOnCovarnius2TextBox
//        raidOnCovarnius3TextBox
//        raidOnCovarnius4TextBox
//        raidOnCovarnius5TextBox
//        raidOnCovarnius6TextBox
//        raidOnCovarnius7TextBox
//        raidOnCovarnius8TextBox
//        raidOnCovarnius10TextBox
//        raidOnCovarnius11TextBox
//        raidOnCovarnius12TextBox
//        raidOnCovarnius13TextBox
//        riseAndShine1TextBox
//        riseAndShine2TextBox
//        riseAndShine3TextBox
//        riseAndShine4TextBox
//        riseAndShine5TextBox
//        ristAndShine6TextBox
//        riseAndShine7TextBox
//        riseAndShine8TextBox
//        chapter2
//        chapter3
//        chapter3page2
//        whichFizz
//        IntroductionTextBox
      
    }

    override func viewWillDisappear(_ animated: Bool) {

        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let width = self.view.frame.size.width
        self.chap2_0TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_3TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_0?.changeFontSizeByDevice(width: width)
        self.chap3_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_15TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_25TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1_point5TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust_1TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.trust1TextBox?.changeFontSizeByDevice(width: width)
        self.trust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.hapalStance1TextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDownTextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDown2TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue2AgainTextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue3TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescueTextBox?.changeFontSizeByDevice(width: width)
        self.chap4_1TextBox?.changeFontSizeByDevice(width: width)
        self.chapt4_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap4_3TextBox?.changeFontSizeByDevice(width: width)
        
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
    
    
    @IBOutlet weak var chap2_0TextBox: UITextView!
    @IBOutlet weak var chap2_1TextBox: UITextView!
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
    @IBOutlet weak var hapalRescue4TextBox: UITextView!
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
    @IBOutlet weak var Chapter6_1AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_1Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_2TextBox: UITextView!
    @IBOutlet weak var chapter6_3TextBox: UITextView!
    @IBOutlet weak var chapter6_3Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_3AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_4TextBox: UITextView!
    @IBOutlet weak var Chapter_6_4_AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_4Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_5TextBox: UITextView!
    @IBOutlet weak var chapter6_5AmbassadorTextBox: UITextView!
    @IBOutlet weak var Chapter6_6AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_6Point5TextBox: UITextView!
    @IBOutlet weak var Chapter6_before7TextBox: UITextView!
    @IBOutlet weak var goodGrowlicsTextBox: UITextView!
    @IBOutlet weak var TheyreViciousRunTextBox: UITextView!
    @IBOutlet weak var theyreViciousRunTextBox_1Point5TextBox: UITextView!
    @IBOutlet weak var theyreViciousRun_2TextBox: UITextView!
    @IBOutlet weak var theyreViciousRun_2Point5TextBox: UITextView!
    @IBOutlet weak var counciChamberSneakTextBox: UITextView!
    @IBOutlet weak var councilChamberSneak_1Point5: UITextView!
    @IBOutlet weak var chapter6_6TextBox: UITextView!
    @IBOutlet weak var CCCExplanationTextBox: UITextView!
    @IBOutlet weak var ramShipTextBox: UITextView!
    @IBOutlet weak var ramShip2TextBox: UITextView!
    @IBOutlet weak var ramShip2Point5TextBox: UITextView!
    @IBOutlet weak var fetchKey: UITextView!
    @IBOutlet weak var fetchKey2TextBox: UITextView!
    @IBOutlet weak var greenFizzTheEndTextBox: UITextView!
    @IBOutlet weak var JigsUpTextBox: UITextView!
    @IBOutlet weak var jigsUp1Point5TextBox: UITextView!
    @IBOutlet weak var yellowFizzTheEndTextBox: UITextView!
    @IBOutlet weak var heSeemsSeriousTextBox: UITextView!
    @IBOutlet weak var chapter5Before2TextBox: UITextView!
    @IBOutlet weak var TurnBackTheEnd: UITextView!
    @IBOutlet weak var glimmerOfHope: UITextView!
    @IBOutlet weak var neverKnowTheEnd: UITextView!
    @IBOutlet weak var neverGiveUpTextBox: UITextView!
    @IBOutlet weak var almostGiveUpTextBox: UITextView!
    @IBOutlet weak var checkWindowTextBox: UITextView!
    @IBOutlet weak var checkDoorTextBox: UITextView!
    @IBOutlet weak var twoDiplomats1TextBox: UITextView!
    @IBOutlet weak var twoDiplomats3TextBox: UITextView!
    @IBOutlet weak var noPeaceTextBox: UITextView!
    @IBOutlet weak var noPeace2TextBox: UITextView!
    @IBOutlet weak var twoDiplomats6TextBox: UITextView!
    @IBOutlet weak var iceRayTextBox: UITextView!
    @IBOutlet weak var twoDiplomats7TextBox: UITextView!
    @IBOutlet weak var twoDiplomats8TextBox: UITextView!
    @IBOutlet weak var twoDiplomats9TextBox: UITextView!
    @IBOutlet weak var twoDiplomats10TextBox: UITextView!
    @IBOutlet weak var twoDiplomats11TextBox: UITextView!
    @IBOutlet weak var twoDiplomats12TextBox: UITextView!
    @IBOutlet weak var twoDiplomats13TextBox: UITextView!
    @IBOutlet weak var clog1TextBox: UITextView!
    @IBOutlet weak var clog2TextBox: UITextView!
    @IBOutlet weak var clog3TextBox: UITextView!
    @IBOutlet weak var failedDistraction1TextBox: UITextView!
    @IBOutlet weak var failedDistraction2TextBox: UITextView!
    @IBOutlet weak var tookTheKeyTextBox: UITextView!
    @IBOutlet weak var noKeyTakenTextBox: UITextView!
    @IBOutlet weak var possibleButRisky: UITextView!
    @IBOutlet weak var raidOnCovarnius1TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius2TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius3TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius4TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius5TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius6TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius7TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius8TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius9TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius10TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius11TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius12TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius13TextBox: UITextView!
    @IBOutlet weak var riseAndShine1TextBox: UITextView!
    @IBOutlet weak var riseAndShine2TextBox: UITextView!
    @IBOutlet weak var riseAndShine3TextBox: UITextView!
    @IBOutlet weak var riseAndShine4TextBox: UITextView!
    @IBOutlet weak var riseAndShine5TextBox: UITextView!
    @IBOutlet weak var ristAndShine6TextBox: UITextView!
    @IBOutlet weak var riseAndShine7TextBox: UITextView!
    @IBOutlet weak var riseAndShine8TextBox: UITextView!
    @IBOutlet weak var chapter2: UITextView!
    @IBOutlet weak var chapter3: UITextView!
    @IBOutlet weak var chapter3page2: UITextView!
    @IBOutlet weak var whichFizz: UITextView!
    @IBOutlet weak var IntroductionTextBox: myTextView!
}





extension UITextView {
    
    func changeFontSizeByDevice(width: CGFloat) {
        switch width {
        case 0..<321: // iPhone 4 and iPhone 5
            self.font = UIFont(name: "Avenir-Book", size: 14)
        case 375: // iPhone 6
            self.font = UIFont(name: "Avenir-Book", size: 16)
        case 414: // iPhone 6 Plus, iPhone 8 Plus
            self.font = UIFont(name: "Avenir-Book", size: 20)
        case 768: // iPad
            self.font = UIFont(name: "Avenir-Book", size: 25)
        default: // iPad Pro
            self.font = UIFont(name: "Avenir-Book", size: 30)
        }
        
    }
    
}
