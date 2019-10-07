//
//  ViewController.swift
//  Swift_Study_04
//
//  Created by DohyunKim on 01/10/2019.
//  Copyright © 2019 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveByNavi(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "main", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        self.present(nextView!, animated: true, completion: nil)
        
        
    }
    
    @IBAction func movePresent(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "main", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        self.present(nextView!, animated: true, completion: nil)
    }
}

