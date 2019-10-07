//
//  SecondViewController.swift
//  Swift_Study_03
//
//  Created by DohyunKim on 01/10/2019.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
