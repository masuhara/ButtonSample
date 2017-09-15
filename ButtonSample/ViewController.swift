//
//  ViewController.swift
//  ButtonSample
//
//  Created by Masuhara on 2017/09/15.
//  Copyright © 2017年 Ylab, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aButtonStatus: Bool = false
    var bButtonStatus: Bool = false
    var cButtonStatus: Bool = false
    
    @IBOutlet var aLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    @IBOutlet var cLabel: UILabel!
    
    @IBOutlet var aButton: UIButton!
    @IBOutlet var bButton: UIButton!
    @IBOutlet var cButton: UIButton!
    @IBOutlet var dButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkButtonStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func checkButtonStatus() {
        
        if aButtonStatus == true {
            aLabel.text = "ON"
        } else {
            aLabel.text = "OFF"
        }
        
        if bButtonStatus == true {
            bLabel.text = "ON"
        } else {
            bLabel.text = "OFF"
        }
        
        if cButtonStatus == true {
            cLabel.text = "ON"
        } else {
            cLabel.text = "OFF"
        }
        
        if aButtonStatus == true && bButtonStatus == true && cButtonStatus == true {
            dButton.isEnabled = true
        } else {
            dButton.isEnabled = false
        }
    }
    
    @IBAction func tapAButton() {
        if aButtonStatus == true {
            aButtonStatus = false
        } else {
            aButtonStatus = true
        }
        
        checkButtonStatus()
    }
    
    @IBAction func tapBButton() {
        if bButtonStatus == true {
            bButtonStatus = false
        } else {
            bButtonStatus = true
        }
        
        checkButtonStatus()
    }
    
    @IBAction func tapCButton() {
        if cButtonStatus == true {
            cButtonStatus = false
        } else {
            cButtonStatus = true
        }
        
        checkButtonStatus()
    }
    
    @IBAction func tapDButton() {
        let alert = UIAlertController(title: "おめでとう", message: "Dが押せました", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(action)
        self.show(alert, sender: nil)
    }

}

