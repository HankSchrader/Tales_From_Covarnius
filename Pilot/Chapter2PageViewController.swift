//
//  Chapter2PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/28/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource{
    var menuShowing = false
    let viewController = ViewController()
    final let chapter_name = "Onto Covarnius!"
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    lazy var orderedViewControllers: [UIViewController] =
        {
            return [self.newVC(viewController: "chap2_1"),
                    self.newVC(viewController: "chap2_2"),
                    self.newVC(viewController: "chap2_3")]
    }()
    
    var pageControl = UIPageControl()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: false, completion: nil)
            //completion: nil. If I wanted code to be executed upon completion of swiping, I'd set it here.
        }
        
        
        self.delegate = self
        
        configurePageControl()
        ViewController.sharedHelper.completedChapter2 = true
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
         super.viewDidAppear(animated)
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: chapter_name) == false) {
            
            print("Made it past the check.")
            let newChapterAlert = UIAlertController(title: "You Just Unlocked a Chapter!", message: chapter_name, preferredStyle: UIAlertControllerStyle.alert)
            newChapterAlert.addAction(UIAlertAction(title: "Great!", style: UIAlertActionStyle.default, handler: nil))
            ChapterSelectViewController.chapterSelect.saveChapter(chapterName: chapter_name)
            self.present(newChapterAlert, animated: true, completion: nil)
            
        }
    }
    
    func configurePageControl() {
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width, height: 50))
        pageControl.numberOfPages = orderedViewControllers.count
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.white
        pageControl.currentPageIndicatorTintColor = UIColor.black
        self.view.addSubview(pageControl)
    }
    
    func newVC(viewController : String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*MARK: pageViewControllerBefore
     Returns the viewController that is BEFORE the current viewController
     */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            //return orderedViewControllers.last
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        return orderedViewControllers[previousIndex]
    }
    
    //Transition Completed pageViewController, look for that in the list
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let contentPageViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.index(of: contentPageViewController)!
    }
    /* MARK: pageViewControllerAfter
     Returns the viewController that is BEFORE the current viewController
     */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
            //return orderedViewControllers.first
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        return orderedViewControllers[nextIndex]
    }
}