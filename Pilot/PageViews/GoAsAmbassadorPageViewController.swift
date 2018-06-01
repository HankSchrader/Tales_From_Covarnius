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
                
            case "change my mind"?:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "ambassador arc"?:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "sneak into storeroom"?:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "borrow"?:
                setImage(image: Constants.FRONT_DOOR_PIC)
                return [
                        self.newVC(viewController: "break and enter?")]
            case "break in"?:
                removeImage(image: Constants.FRONT_DOOR_PIC)
                setImage(image: Constants.GROWLICS_PIC)
                return [self.newVC(viewController: "good growlics"),
                        self.newVC(viewController: "snack or run")]
            case "vicious growlics"?:
                super.setImage(image: Constants.GROWLICS_PIC)
                
                return [self.newVC(viewController: "They're Vicious. Run!"),
                        self.newVC(viewController: "They're Vicious. Run! 1.5"),
                        self.newVC(viewController: "They're Vicious. Run! 2"),
                        self.newVC(viewController: "They're Vicious. Run! 2.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "snack time"?:
                removeImage(image: Constants.GROWLICS_PIC)
                setImage(image: Constants.AMBASSADOR_FRIDGE_PIC)
                return [self.newVC(viewController: "what should they eat?")]
            case "dessert"?:
               // setImage(Constants.pic)
                
                return [self.newVC(viewController: "dessert"),
                        self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "stinky meat"?:
                return [
                        self.newVC(viewController: "Phase One Complete"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador"),
                        self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador")]
                
            case "check door"?:
                return [self.newVC(viewController: "check door"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador")]
            case "shady turn back"?:
                removeImage(image: Constants.AMBASSADOR_FRIDGE_PIC)
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "no time for questions"?:
                return [self.newVC(viewController: "do not ask")]
                
            case "not important"?:
                return [self.newVC(viewController: "notImportant"),
                self.newVC(viewController: "Chapter 6 6 Ambassador"),
                self.newVC(viewController: "Chapter 6 7 Ambassador")]
                
            case "keep thinking"?:
                return [self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador")]
                

            case "CCC"?:
                return [self.newVC(viewController: "CCC explanation"),
                        self.newVC(viewController: "do not ask")]

            default:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            }

            
        }()
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.AMBASSADOR_ARC,order: 8)
        
    }

}
