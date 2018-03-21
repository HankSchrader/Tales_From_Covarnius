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
        self.chapter4?.setContentOffset(CGPoint.zero, animated: true)
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var chapter4Page2: UITextView!
    @IBOutlet weak var earthsGreatestScientist3: UITextView!
    @IBOutlet weak var EarthsGreatestScientist2: UITextView!
    @IBOutlet weak var EarthsGreatestScientist: UITextView!
    @IBOutlet weak var Chapter3_1: UITextView!
    @IBOutlet weak var chapter2: UITextView!
    @IBOutlet weak var chapter3: UITextView!
    @IBOutlet weak var chapter4: UITextView!
    @IBOutlet weak var chpater_5_1: UITextView!
    @IBOutlet weak var chapter3page2: UITextView!
    
    @IBOutlet weak var whichFizz: UITextView!
    @IBOutlet weak var hapalStanceChapter: UITextView!
    @IBOutlet weak var OnTheRanchChapter: UITextView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

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
    

    
    
    
    
}
