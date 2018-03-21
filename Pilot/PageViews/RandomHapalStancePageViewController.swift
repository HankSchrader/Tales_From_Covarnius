//
//  RandomHapalStancePageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RandomHapalStancePageViewController: GenericPageViewController {

    override func viewDidLoad() {
        self.orderedViewControllers =  {
            if self.segueID == "Don't Trust" {
                return [self.newVC(viewController: "No Trust_1"),
                        self.newVC(viewController: "No Trust_1.5"),
                        self.newVC(viewController: "Hapal Stance 1"),
                        self.newVC(viewController: "Hapal Stance 2")]
            } else {
                return [self.newVC(viewController: "Trust_1"),
                        self.newVC(viewController: "Trust_1.5"),
                        self.newVC(viewController: "Hapal Stance 1"),
                        self.newVC(viewController: "Hapal Stance 2")
                        ]
            }
        }()
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.BY_RANDOM_HAPAL_STANCE, order: 3)
       
    }

}
