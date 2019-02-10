//
//  ViewController.swift
//  Temperature_Converter
//
//  Created by Hoslack Ochieng on 09/02/2019.
//  Copyright © 2019 Hoslack Ochieng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var CelsiusField: UITextField!
    
    @IBOutlet weak var ConvertButton: UIButton!
    
    @IBAction func ConvertButtonClicked(_ sender: UIButton) {
        if let result = CelsiusField.text{
            if result==""{
                return
            }else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    ResultLabel.text = String(output)
                }
            }
        }
    }
    @IBOutlet weak var ResultLabel: UILabel!
    


}

