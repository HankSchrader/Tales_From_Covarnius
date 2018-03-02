//
//  Chapter2ViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2ViewController: UIViewController {

   
    @IBAction func test(_ sender: Any) {
            print("test")
            performSegue(withIdentifier: "Chapter 3", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
class ReplaceControllerSegue: UIStoryboardSegue {
    
    override func perform() {
        print("Hello")
        if let navigationController = source.navigationController as UINavigationController? {
            var controllers = navigationController.viewControllers
            controllers.removeLast()
            
            controllers.append(destination)
            navigationController.setViewControllers(controllers, animated: true)
        }
    }
}
