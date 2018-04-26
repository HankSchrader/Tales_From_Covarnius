//
//  Chapter2PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2PageViewController: GenericPageViewController{
    

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers

    
    override func viewDidLoad() {
       
        self.orderedViewControllers =  {
            if self.segueID == "Whats In The Sky" {
                
                //Change to Chrono Landing
               setImage(image: Constants.BACK_AT_THE_RANCH)
                return [
                    self.newVC(viewController: "chap2_1",previousImage: nil,newImage: Constants.BACK_AT_THE_RANCH),
                    self.newVC(viewController: "chap2_2",previousImage: nil,newImage: Constants.BACK_AT_THE_RANCH),
                    self.newVC(viewController: "chap2_3",previousImage: Constants.BACK_AT_THE_RANCH,newImage: Constants.YOU_SAVED_THE_HAPAL),
                    self.newVC(viewController: "chap2_4",previousImage: Constants.YOU_SAVED_THE_HAPAL,newImage: Constants.CLOUDS_PIC)]
            } else {
                
                return [
                    self.newVC(viewController: "chap2_0"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3"),
                        self.newVC(viewController: "chap2_4")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }
    
}
