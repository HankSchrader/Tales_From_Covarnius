//
//  Run_As_Fast_As_You_Can_PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//run_as_fast_as_you_can_1

import UIKit

class Run_As_Fast_As_You_Can_PageViewController: GenericPageViewController{

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override lazy var orderedViewControllers: [UIViewController] =
        {
            return [self.newVC(viewController: "run_as_fast_as_you_can_1")]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
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
