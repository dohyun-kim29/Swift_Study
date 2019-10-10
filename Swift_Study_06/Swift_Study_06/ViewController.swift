//
//  ViewController.swift
//  Swift_Study_06
//
//  Created by DohyunKim on 10/10/2019.
//  Copyright © 2019 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
}

