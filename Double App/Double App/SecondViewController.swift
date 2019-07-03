//
//  SecondViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var clock = 210
    var timer = Timer ()
    var isRunning = true
    
    @objc func runTimer() {
        if clock > 0{
            clock -= 1
            clockLabel.text = String(clock)
        } else {
            timer.invalidate()
            isRunning = false
        }
    }

    @IBOutlet weak var clockLabel: UILabel!
    @IBAction func pause(_ sender: Any) {
        if isRunning{
            timer.invalidate()
            isRunning = false
        }
    }
    
    @IBAction func play(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondViewController.runTimer), userInfo: nil, repeats: true)
        isRunning = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

