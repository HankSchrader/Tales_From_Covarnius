//
//  Chapter5PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter5PageViewController: GenericPageViewController {

    override func viewDidLoad() {
        self.orderedViewControllers =  {
            if self.segueID == "The Jig Is Up" {
                return [self.newVC(viewController: "The Jig Is Up"),
                        self.newVC(viewController: "Chapter 5-1")]
                
            }
                //segueID here: I'm not a scientist.
            else {
                return [
                        self.newVC(viewController: "Chapter 5 1")]
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
