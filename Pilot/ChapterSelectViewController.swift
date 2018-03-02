//
//  ChapterSelectViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/2/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData

class ChapterSelectViewController: UIViewController {
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
            print("fetch failed!")
        }
        // Do any additional setup after loading the view.
    }
    
    func deleteAllData() {
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        if let result = try? PersistanceService.context.fetch(fetchRequest) {
            for object in result {
                PersistanceService.context.delete(object)
            }
        }
        ChapterSelectViewController.chapterSelect.tableView?.reloadData()
    }
    func onChapterFound(ChapterName: String!) {
        
            let chapter = Chapter(context: PersistanceService.context)
            chapter.name = ChapterName
            PersistanceService.saveContext()
            self.chapters.append(chapter)
            self.tableView?.reloadData()
            
        
    }
}

extension ChapterSelectViewController: UITableViewDataSource {
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
    
    func isChapterThere(chapterName: String!) -> Bool {
        var isThere = false
        for chapters in self.chapters {
            if(chapterName == chapters.name) {
                print("Found it!")
                isThere = true
            }
        }
          return isThere
    }
    
    func saveChapter(chapterName: String!) {
        onChapterFound(ChapterName: chapterName)
    }
}


