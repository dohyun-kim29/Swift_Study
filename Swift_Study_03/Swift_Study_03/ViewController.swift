//
//  ViewController.swift
//  Swift_Study_03
//
//  Created by 김도현 on 31/07/2019.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnMove(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "main", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        self.present(nextView!, animated: true, completion: nil)
        
    
    }
}

