//
//  FirstViewController.swift
//  To Do List
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = UITableViewCell(style: UITableViewCell.CellStyle.default , reuseIdentifier: "Cell" )
        
        Cell.textLabel?.text = taskList[indexPath.row]
        
        return Cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
            return taskList.count
    }
    
    @IBOutlet weak var table: UITableView!
    
    var taskList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated:
        Bool) {
        let itemObject =
            UserDefaults.standard.object(forKey: "taskList")
        
        if let tempTask = itemObject as? [String] {
        taskList = tempTask
    }
        table.reloadData()
    }
    
    
}

