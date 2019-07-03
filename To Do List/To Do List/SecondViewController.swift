//
//  SecondViewController.swift
//  To Do List
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var newTask: UITextField!
    
    @IBAction func addNewTask(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "taskList")
        
        var taskList: [String]
        
        if let tempTask = itemObject as?[String] {
            taskList = tempTask
            taskList.append(newTask.text!)
    
            print(taskList)
        } else{
            taskList = [newTask.text!]
        }
        UserDefaults.standard.set(taskList, forKey: "taskList")
        
        newTask.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    func TextFieldShouldReturn(_ TextField: UITextView) -> Bool { TextField.resignFirstResponder()
    
        return true
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

