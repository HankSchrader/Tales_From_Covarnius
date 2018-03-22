//
//  TheTwoDiplomatsPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/20/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class TheTwoDiplomatsPageViewController: GenericPageViewController {
    var keyFlag: Bool = false
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override func viewDidLoad() {
        if self.segueID == "take key" {
            self.keyFlag = true
        } else {
            self.keyFlag = false
        }
        let segue: String? = self.segueID
        
        self.orderedViewControllers =  {
            switch segue {
                
            case "sensitive mission"?:
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "don't mess with him"?:
                //Needs completing
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "take key"?:
                return [self.newVC(viewController: "took the key"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "too risky"?:
                return [self.newVC(viewController: "no key taken"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "anti-gravity"?:
                return [self.newVC(viewController: "two diplomats 6"),
                        self.newVC(viewController: "two diplomats 7"),
                        self.newVC(viewController: "two diplomats 8"),
                        self.newVC(viewController: "two diplomats 9"),
                        self.newVC(viewController: "two diplomats 10"),
                        self.newVC(viewController: "two diplomats 11"),
                        self.newVC(viewController: "two diplomats 12"),
                        self.newVC(viewController: "two diplomats 13"),
                        self.newVC(viewController: "two diplomats 14")]
            case "clog"?:
                return [self.newVC(viewController: "clog 1"),
                        self.newVC(viewController: "clog 2"),
                        self.newVC(viewController: "clog 3"),
                        self.newVC(viewController: "clog 4")]
            case "failed diversion"?:
                return [self.newVC(viewController: "failed diversion 1"),
                        self.newVC(viewController: "YOU LOSE")]
                

                
                
            default:
                // TODO:
                return [self.newVC(viewController: "smart move")]
                
            }
        }()
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.THE_TWO_DIPLOMATS, order: 9)
    }
    

}
