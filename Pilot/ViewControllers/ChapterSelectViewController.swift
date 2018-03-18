//
//  ChapterSelectViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/2/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData

class ChapterSelectViewController: Chapter3ViewController {
    static var chapterSelect = ChapterSelectViewController()
    var chapters = [Chapter]()
  
    @IBOutlet weak var tableView: UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
        let chapters = try PersistanceService.context.fetch(fetchRequest)
        self.chapters = chapters
        self.tableView?.reloadData()
        } catch
        {
            NSLog("FETCH FAILED")
        }
        tableView?.dataSource = self
        tableView?.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Chapter4PageViewController
        {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
        }
        
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG, fadeDuration: Constants.STANDARD_FADE_TIME)
    }
    

    func saveChapter(ChapterName: String!) {
            let chapter = Chapter(context: PersistanceService.context)
            chapter.name = ChapterName
            PersistanceService.saveContext()
            self.chapters.append(chapter)
            self.tableView?.reloadData()
    }
    
    func deleteChapter(chapterName: String!) {
        if isChapterThere(chapterName: chapterName) {
            let i = self.chapters.count
            let index = 0
            while index < i {
                if self.chapters[i].name == chapterName {
                    self.chapters.remove(at: i)
                    
                }
            }
        }
        print("Chapter Not Found")
       
    }
    
    func isChapterThere(chapterName: String!) -> Bool {
        var isThere = false
        for chapters in self.chapters {
            if(chapterName == chapters.name) {
                isThere = true
            }
        }
        return isThere
    }
    
    func deleteAllData() {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Chapter")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try PersistanceService.context.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                PersistanceService.context.delete(item)
            }
            
            // Save Changes
            try PersistanceService.context.save()
        } catch {
            NSLog("Delete Failed")
        }
    }
    
    
    
    func goToChapter(chapter: String!) {
        //reload the chapters
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            ChapterSelectViewController.chapterSelect.chapters = chapters
            ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }
     
        self.performSegue(withIdentifier: chapter, sender: self)
        
    }


}
extension ChapterSelectViewController: UITableViewDataSource, UITableViewDelegate{
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = chapters[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            ChapterSelectViewController.chapterSelect.chapters = chapters
            ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }

        let cell = chapters[indexPath.row].name
        self.performSegue(withIdentifier: cell!, sender: self)
        
    }
    

    

}


