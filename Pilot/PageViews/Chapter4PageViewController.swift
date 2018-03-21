//
//  Chapter4PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/17/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter4PageViewController: GenericPageViewController {
    
    override func viewDidLoad() {
        self.orderedViewControllers =  {
            if self.segueID == "keep going" || self.segueID == "Earth's Greatest Scientist" {
                return [self.newVC(viewController: "chap4_1"),
                        self.newVC(viewController: "chap4_2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            } else if self.segueID == "You Didn't Help The Hapal" || segueID == "You Let The Hapal Down..." {
                return [self.newVC(viewController: "Let Hapal Down"),
                        self.newVC(viewController: "Let Hapal Down 2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            } else if self.segueID == "Help The Hapal" || self.segueID == "You Saved The Hapal!!" {
                return [self.newVC(viewController: "Hapal Rescue 1"),
                        self.newVC(viewController: "Hapal Rescue 2"),
                        self.newVC(viewController: "Hapal Rescue 3"),
                        self.newVC(viewController: "chap4_2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            }
            else {
                return [self.newVC(viewController: "katonian_1"),
                        self.newVC(viewController: "katonian_1.5"),
                        self.newVC(viewController: "katonian_2"),
                        self.newVC(viewController: "katonian_2.5"),
                        self.newVC(viewController: "katonian_3")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if self.segueID == "keep going" {
            super.checkNewChapter(chapterName: Constants.EARTHS_GREATEST_SCIENTIST,order: 5)
        }
        else if self.segueID == "Help The Hapal" {
            super.checkNewChapter(chapterName: Constants.YOU_SAVED_THE_HAPAL, order: 4)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Let The Hapal Down...")
          //  ChapterSelectViewController.chapterSelect.deleteRecord(chapterName: Constants.YOU_LET_THE_HAPAL_DOWN)
        }
        else if self.segueID == "You Didn't Help The Hapal" {
            super.checkNewChapter(chapterName: Constants.YOU_LET_THE_HAPAL_DOWN, order: 4)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Saved The Hapal!!")
          //  ChapterSelectViewController.chapterSelect.deleteRecord(chapterName: Constants.YOU_SAVED_THE_HAPAL)
        } else
        {
            if self.previousRID != "Chapter Select" {
            super.checkNewChapter(chapterName: Constants.COWBOYS_OF_KATONIA, order: 2)
            }
        }
    }

}
