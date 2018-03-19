//
//  SneakOntoShipPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/19/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class SneakOntoShipPageViewController: GenericPageViewController {
    override func viewDidLoad() {
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {

            case "sneak arc"?:
                    return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
            case "ram ship"?:
                return [self.newVC(viewController: "ram ship"),
                        self.newVC(viewController: "ram ship 2")]
            case "fetch key"?:
                return [self.newVC(viewController: "fetch key"),
                        self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
            default:
                return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
                
            
            
            }
        }()
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.SNEAK_ONTO_SHIP, order: 8)
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
