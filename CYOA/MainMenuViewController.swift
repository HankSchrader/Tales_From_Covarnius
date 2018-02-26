//
//  MainMenuViewController.swift
//  CYOA
//
//  Created by Erik Mikac on 2/25/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createBeginButton()
        
    
}
    func createBeginButton() {
        let button = UIButton()
        button.setTitle("Begin!", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 50, y: view.frame.height/1.25, width: 100, height: 36)
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        print(view.frame.height)
        view.addSubview(button)
        
    }
   

        

        // Do any additional setup after loading the view.

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
