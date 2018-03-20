//
//  ChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {
    let textView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        goToChapterSelectAction()
        textView.setContentOffset(CGPoint.zero, animated: false)
        self.textView.scrollRangeToVisible(NSMakeRange(0, 0))
        self.textView.isScrollEnabled = false
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Chapter3_1: UITextView!
    @IBOutlet weak var chapter2: UITextView!
    @IBOutlet weak var chapter3: UITextView!
    @IBOutlet weak var chapter4: UITextView!
    @IBOutlet weak var chpater_5_1: UITextView!
    
    @IBOutlet weak var hapalStanceChapter: UITextView!
    @IBOutlet weak var OnTheRanchChapter: UITextView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.chapter2?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter2?.scrollRangeToVisible(NSMakeRange(0, 0))
        self.chapter3?.setContentOffset(CGPoint.zero, animated: false)
        self.chapter3?.scrollRangeToVisible(NSMakeRange(0, 0))
        
        self.Chapter3_1?.setContentOffset(CGPoint.zero, animated: false)
        self.Chapter3_1?.scrollRangeToVisible(NSMakeRange(0, 0))
        
        self.OnTheRanchChapter?.setContentOffset(CGPoint.zero, animated: false)
        self.OnTheRanchChapter?.scrollRangeToVisible(NSMakeRange(0, 0))
        
        self.hapalStanceChapter?.setContentOffset(CGPoint.zero, animated: false)
        self.hapalStanceChapter?.scrollRangeToVisible(NSMakeRange(0, 0))
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
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
