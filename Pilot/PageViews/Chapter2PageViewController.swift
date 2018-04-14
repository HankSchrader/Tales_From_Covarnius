//
//  Chapter2PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2PageViewController: GenericPageViewController{
    

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers

    
    override func viewDidLoad() {
       
        self.orderedViewControllers =  {
            if self.segueID != "to_main_quest" {
                super.setImage(image: Constants.CLOUDS_PIC)
                return [self.newVC(viewController: "chap2_0"),
                        self.newVC(viewController: "chap2_1"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3"),
                        self.newVC(viewController: "chap2_4")]
            } else {
                print("This happened")
                 super.setImage(image: Constants.KATONIAN_DESERT_PIC)
                return [self.newVC(viewController: "chap2_1"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3"),
                        self.newVC(viewController: "chap2_4")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }
    
}
