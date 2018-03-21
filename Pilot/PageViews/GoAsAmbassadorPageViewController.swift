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
                        self.newVC(viewController: "Chapter 6 1.5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "sneak into storeroom"?:
                return [self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "borrow"?:
                return [self.newVC(viewController: "break and enter 0.5?"),
                        self.newVC(viewController: "break and enter?")]
            case "break in"?:
                // FILLER MUST CHANGE
                return [self.newVC(viewController: "good growlics"),
                        self.newVC(viewController: "snack or run")]
            case "vicious growlics"?:
                //FILLER MUST CHANGE
                return [self.newVC(viewController: "They're Vicious. Run!"),
                        self.newVC(viewController: "They're Vicious. Run! 2"),
                        self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "snack time"?:
                 //DONE
                return [
                    self.newVC(viewController: "what should they eat? 0.5"),
                    self.newVC(viewController: "what should they eat?")]
                
            case "stinky meat"?:
                return [
                        self.newVC(viewController: "Phase One Complete 0.5"),
                        self.newVC(viewController: "Phase One Complete"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador"),
                        self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador")]
                
            case "shady turn back"?:
                return [self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "no time for questions"?:
                return [self.newVC(viewController: "do not ask")]
            case "check window"?:
                return [self.newVC(viewController: "check window"),
                        self.newVC(viewController: "check door"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador"),
                        self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador") ]
            case "check door"?:
                return [self.newVC(viewController: "check door"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador"),
                        self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador")]
            case "CCC"?:
                return [self.newVC(viewController: "CCC explanation"),
                        self.newVC(viewController: "do not ask")]

            default:
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 1.5 Ambassador"),
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
