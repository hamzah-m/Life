//
//  ViewController.swift
//  Life
//
//  Created by Hamzah Mugharbil on 8/14/17.
//  Copyright © 2017 Hamzah Mugharbil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workSwitch: UISwitch!
    @IBOutlet weak var socialSwitch: UISwitch!
    @IBOutlet weak var sleepSwitch: UISwitch!
    var random: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func workSwitched(_ sender: UISwitch) {
        
        random = Int(arc4random_uniform(2))
        if socialSwitch.isOn && sleepSwitch.isOn {
            if random == 0 {
                socialSwitch.isOn = false
            } else {
                sleepSwitch.isOn = false
            }
        }
        
    }
    
    @IBAction func socialSwitched(_ sender: UISwitch) {
        
        random = Int(arc4random_uniform(2))
        if workSwitch.isOn && sleepSwitch.isOn {
            if random == 0 {
                workSwitch.isOn = false
            } else {
                sleepSwitch.isOn = false
            }
        }
        
    }
    
    @IBAction func sleepSwitched(_ sender: UISwitch) {
        
        random = Int(arc4random_uniform(2))
        if workSwitch.isOn && socialSwitch.isOn {
            if random == 0 {
                socialSwitch.isOn = false
            } else {
                workSwitch.isOn = false
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

