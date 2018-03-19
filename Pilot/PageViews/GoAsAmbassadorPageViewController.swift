//
//  GoAsAmbassadorPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/19/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GoAsAmbassadorPageViewController: GenericPageViewController {

    override func viewDidLoad() {
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {
                
            case "ambassador arc"?:
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "sneak into storeroom"?:
                return [self.newVC(viewController: "ram ship"),
                        self.newVC(viewController: "ram ship 2")]
            case "borrow"?:
                return [self.newVC(viewController: "fetch key"),
                        self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
            default:
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]

            }
        }()
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.AMBASSADOR_ARC,order: 7)
        
    }

}
