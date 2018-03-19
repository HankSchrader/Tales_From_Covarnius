//
//  Chapter5PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter5PageViewController: GenericPageViewController {
   
   
    // Prints "The last letter of the alphabet"
    override func viewDidLoad() {
        print(self.segueID)
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {
            case "Fake Scientist"?:
                return [self.newVC(viewController: "The Jig Is Up"),
                        self.newVC(viewController: "Chapter 5 1"),
                        self.newVC(viewController: "Chapter 5 2")]
            case "never give up"?:
                return [
                    self.newVC(viewController: "never give up"),
                    self.newVC(viewController: "Chapter 5 3"),
                    self.newVC(viewController: "Chapter 5 4"),
                    self.newVC(viewController: "Chapter 5 5")]
            
            case "we tried"?:
                return [
                    self.newVC(viewController: "almost give up"),
                    self.newVC(viewController: "Chapter 5 6"),
                    self.newVC(viewController: "Chapter 5 7")
                    
                ]
            case "great plan"?:
                return [
                    self.newVC(viewController: "Chapter 5 6"),
                    self.newVC(viewController: "Chapter 5 7")
                    
                ]
                
            default:
                return [self.newVC(viewController: "Chapter 5 1"),
                self.newVC(viewController: "Chapter 5 2")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.MASTER_OF_DISGUISE_OR_LIES,order: 7)
            
        }
    }
