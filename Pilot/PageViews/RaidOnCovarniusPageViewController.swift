//
//  RaidOnCovarniusPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RaidOnCovarniusPageViewController: GenericPageViewController {

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override lazy var orderedViewControllers: [UIViewController] =
        {   if (self.segueID == "Raid On Covarnius" || self.segueID == "broke out of prison") {
            print(self.segueID)
            return [self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 4"),
                    self.newVC(viewController: "raid on covarnius 5"),
                    self.newVC(viewController: "raid on covarnius 6"),
                    self.newVC(viewController: "raid on covarnius 7"),
                    self.newVC(viewController: "raid on covarnius 8"),
                    self.newVC(viewController: "raid on covarnius 9"),
                    self.newVC(viewController: "raid on covarnius 10"),
                    self.newVC(viewController: "raid on covarnius 11"),
                    self.newVC(viewController: "raid on covarnius 12"),
                    self.newVC(viewController: "raid on covarnius 13")] }
        else if self.segueID == "ice ray" {
            return [self.newVC(viewController: "ice ray"),
                    self.newVC(viewController: "no peace 2"),
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 4"),
                    self.newVC(viewController: "raid on covarnius 5"),
                    self.newVC(viewController: "raid on covarnius 6"),
                    self.newVC(viewController: "raid on covarnius 7"),
                    self.newVC(viewController: "raid on covarnius 8"),
                    self.newVC(viewController: "raid on covarnius 9"),
                    self.newVC(viewController: "raid on covarnius 10"),
                    self.newVC(viewController: "raid on covarnius 11"),
                    self.newVC(viewController: "raid on covarnius 12"),
                    self.newVC(viewController: "raid on covarnius 13")]
            
            }
        else if self.segueID == "broker peace"{
            return [self.newVC(viewController: "no peace 1"),
                    self.newVC(viewController: "no peace 2"),
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 4"),
                    self.newVC(viewController: "raid on covarnius 5"),
                    self.newVC(viewController: "raid on covarnius 6"),
                    self.newVC(viewController: "raid on covarnius 7"),
                    self.newVC(viewController: "raid on covarnius 8"),
                    self.newVC(viewController: "raid on covarnius 9"),
                    self.newVC(viewController: "raid on covarnius 10"),
                    self.newVC(viewController: "raid on covarnius 11"),
                    self.newVC(viewController: "raid on covarnius 12"),
                    self.newVC(viewController: "raid on covarnius 13")]
        }
  
        else {print(self.segueID)
            return [
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 4"),
                    self.newVC(viewController: "raid on covarnius 5"),
                    self.newVC(viewController: "raid on covarnius 6"),
                    self.newVC(viewController: "raid on covarnius 7"),
                    self.newVC(viewController: "raid on covarnius 8"),
                    self.newVC(viewController: "raid on covarnius 9"),
                    self.newVC(viewController: "raid on covarnius 10"),
                    self.newVC(viewController: "raid on covarnius 11"),
                    self.newVC(viewController: "raid on covarnius 12"),
                    self.newVC(viewController: "raid on covarnius 13")]
            }
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.RAID_ON_COVARNIUS, order: 11)
        ChapterSelectViewController.chapterSelect.deleteById(id: Constants.RISE_AND_SHINE)
        
    }

}
