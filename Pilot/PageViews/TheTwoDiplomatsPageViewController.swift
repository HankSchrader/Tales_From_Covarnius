//
//  TheTwoDiplomatsPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/20/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class TheTwoDiplomatsPageViewController: GenericPageViewController {

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override func viewDidLoad() {
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {
                
            case "sensitive mission"?:
                return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 1.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
            case "don't mess with him"?:
                //Needs completing
                return [self.newVC(viewController: "ram ship"),
                        self.newVC(viewController: "ram ship 2"),
                        self.newVC(viewController: "ram ship 2.5")]
            default:
                return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 1.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
                
            }
        }()
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.THE_TWO_DIPLOMATS, order: 9)
    }
    

}
