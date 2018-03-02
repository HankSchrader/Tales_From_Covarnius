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
    
    @IBAction func onChapterFound() {
        let alert = UIAlertController(title: "You've Unlocked a new section!", message: nil, preferredStyle: .alert)
        alert.addTextField{ (textField) in
            textField.placeholder = "Chapter Name"
            
        }
        
        let action = UIAlertAction(title: "POST", style: .default) { (_) in
            let name = alert.textFields?.first?.text
            print(name ?? "None Found")
            let chapter = Chapter(context: PersistanceService.context)
            chapter.name = name
            PersistanceService.saveContext()
            self.chapters.append(chapter)
            self.tableView?.reloadData()
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)

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
}

