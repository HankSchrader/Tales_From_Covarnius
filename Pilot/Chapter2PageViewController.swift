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
    override lazy var orderedViewControllers: [UIViewController] =
        {
            return [self.newVC(viewController: "chap2_1"),
                    self.newVC(viewController: "chap2_2"),
                    self.newVC(viewController: "chap2_3")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.ONTO_COVARNIUS)
    }
    
}
