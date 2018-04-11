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
        let imageName = "Shooting Star.png"
        let margins = view.layoutMarginsGuide
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
      
        view.addSubview(imageView)
        view.sendSubview(toBack: imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        self.orderedViewControllers =  {
            if self.previousRID != nil {
                return [self.newVC(viewController: "chap2_0"),
                        self.newVC(viewController: "chap2_1"),
                        self.newVC(viewController: "chap2_2"),
                        self.newVC(viewController: "chap2_3"),
                        self.newVC(viewController: "chap2_4")]
            } else {
                return [self.newVC(viewController: "chap2_1"),
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
