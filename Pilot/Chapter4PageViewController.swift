//
//  Chapter4PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/17/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter4PageViewController: GenericPageViewController {
    var segueID: String? = nil
    
    
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    
    
    override func viewDidLoad() {
        self.orderedViewControllers =  {
            if self.segueID == "keep going" {
                return [self.newVC(viewController: "chap4_1"),
                        self.newVC(viewController: "chap4_2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            } else {
                return [self.newVC(viewController: "katonian_1"),
                        self.newVC(viewController: "katonian_2"),
                        self.newVC(viewController: "katonian_3")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if self.segueID == "keep going" {
            super.checkNewChapter(chapterName: Constants.EARTHS_GREATEST_SCIENTIST)
        }
        else
        {
            super.checkNewChapter(chapterName: Constants.COWBOYS_OF_KATONIA)
        }
    }

}
