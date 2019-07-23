//
//  ViewController.swift
//  Swift_Study_02
//
//  Created by 김도현 on 2019/07/22.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTitle01: UILabel!
    @IBOutlet weak var uiTitle02: UILabel!
    @IBOutlet weak var uiTitle03: UILabel!
    @IBOutlet weak var uiTitle04: UILabel!
    @IBOutlet weak var uiTitle05: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clickBtn01(_ sender: Any) {
        self.uiTitle01.text = "Button 01 Clicked"
    }
    
    @IBAction func clickBtn02(_ sender: Any) {
        self.uiTitle02.text = "Button 02 Clicked"
    }
    
    @IBAction func clickBtn03(_ sender: Any) {
        self.uiTitle03.text = "Button 03 Clicked"
    }
    
    @IBAction func clickBtn04(_ sender: Any) {
        self.uiTitle04.text = "Button 04 Clicked"
    }
    
    @IBAction func clickBtn05(_ sender: Any) {
        self.uiTitle05.text  = "Button 05 Clicked"
    }
    
}

