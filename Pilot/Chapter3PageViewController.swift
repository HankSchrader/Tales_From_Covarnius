//
//  Chapter3PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter3PageViewController:  GenericPageViewController{
    var segueID: String? = nil
    
    
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    
    
    override func viewDidLoad() {
        self.orderedViewControllers =  {
            print("old ID \(self.segueID)")
            if self.segueID == "Dissect" {
                return [self.newVC(viewController: "chap3_0"),
                        self.newVC(viewController: "chap3_1"),
                        self.newVC(viewController: "chap3_2"),
                        self.newVC(viewController: "chap3_3")]
            } else {
                return [self.newVC(viewController: "chap3_1"),
                        self.newVC(viewController: "chap3_2"),
                        self.newVC(viewController: "chap3_3")]
            }
        }()
        super.viewDidLoad()
        print("Inside ViewDidLoad \(self.segueID)")
        print("Amount of VC's: \(self.orderedViewControllers.count)")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.LANDED_ON_COVARNIUS)
    }
}
