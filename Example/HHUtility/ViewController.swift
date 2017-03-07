//
//  ViewController.swift
//  HHUtility
//
//  Created by hardik99 on 03/06/2017.
//  Copyright (c) 2017 hardik99. All rights reserved.
//

import UIKit
import HHUtility

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let Utility = HHUtility()
        Utility.showAlertWithTitleMsg(self, title: "Test", message: "This is alert message.")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

