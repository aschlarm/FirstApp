//
//  ViewController.swift
//  FirstApp
//
//  Created by Amanda Schlarman on 6/5/19.
//  Copyright © 2019 Amanda Schlarman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Welcome: UILabel!
   
    
    @IBAction func ButtonClick(_ sender: UIButton) {
        print("Button Pressed")
        if Name.text == "" || Name.text == nil {
            label.text = "Please type your name and try again"
            Welcome.isHidden = true
        } else {
            label.text = Name.text
            let TempName = Name.text
            Welcome.text = "Hello " + TempName! + ", how are you?"
            
            if Welcome.isHidden {
                Welcome.isHidden = false
            }
            else {
                Welcome.isHidden = true
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

