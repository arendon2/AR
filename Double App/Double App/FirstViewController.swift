//
//  FirstViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var Age: UILabel!
    
    @IBOutlet weak var userInputString: UITextField!
    
    @IBAction func button(_ sender: Any) {
        let userInputString2 = userInputString.text!
        let userInputNumber = Int(userInputString2)!
        
        Age.text = String(userInputNumber * 7)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
