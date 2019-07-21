//
//  ViewController.swift
//  Swift_Study_01
//
//  Created by 김도현 on 2019/07/21.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sayHello(_ sender: Any) {
        self.uiTitle.text = "Hello, World!"
    }
    
}

