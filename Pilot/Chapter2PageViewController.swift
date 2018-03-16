//
//  Chapter2PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2PageViewController: GenericPageViewController{
    
    var previousRID: String? = nil


    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers

    
    override func viewDidLoad() {
        self.orderedViewControllers =  {
            print("old ID \(self.previousRID)")
            if self.previousRID != nil {
                return [self.newVC(viewController: "chap2_0"),
                        self.newVC(viewController: "chap2_1"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3")]
            } else {
                return [self.newVC(viewController: "chap2_1"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3")]
            }
        }()
        super.viewDidLoad()
        print("Inside ViewDidLoad \(self.previousRID)")
        print("Amount of VC's: \(self.orderedViewControllers.count)")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.INTRO)
    }
    
}
