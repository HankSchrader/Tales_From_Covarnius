//
//  RiseAndShinePageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/22/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RiseAndShinePageViewController: GenericPageViewController {
    
    lazy override var orderedViewControllers: [UIViewController] = {
        let segue: String? = self.segueID
        switch segue {
            
        case "hypersleep"?:
            return [self.newVC(viewController: "rise and shine 1"),
                    self.newVC(viewController: "rise and shine 2"),
                    self.newVC(viewController: "rise and shine 3"),
                    self.newVC(viewController: "rise and shine 4"),
                    self.newVC(viewController: "rise and shine 5"),
                    self.newVC(viewController: "rise and shine 6"),
                    self.newVC(viewController: "rise and shine 7") ]
        default:
            print("Something may have gone wrong. Segue should never be nil. Segue: \(String(describing: segue))")
            // TODO:
            return [self.newVC(viewController: "smart move")]
            
        }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.RISE_AND_SHINE, order: 11)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}