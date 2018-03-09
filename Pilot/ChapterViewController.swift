//
//  Chapter1ViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Not sure if I'll ever need to use this function. It allows the user to go back TWO views on the push of a button.
    class ReplaceControllerSegue: UIStoryboardSegue {
        
        override func perform() {
            
            if let navigationController = source.navigationController as UINavigationController? {
                var controllers = navigationController.viewControllers
                controllers.removeLast()
                
                controllers.append(destination)
                navigationController.setViewControllers(controllers, animated: true)
            }
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
}
