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
    override lazy var orderedViewControllers: [UIViewController] =
        {
            return [self.newVC(viewController: "Intro_1")]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.THE_TWO_DIPLOMATS, order: 9)
    }
    

}
