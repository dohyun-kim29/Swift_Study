//
//  ResultViewController.swift
//  Swift_Study_10
//
//  Created by DohyunKim on 08/11/2019.
//  Copyright © 2019 DohyunKim. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultEmail: UILabel!
    
    @IBOutlet weak var resultUpdate: UILabel!
    
    @IBOutlet weak var resultInterval: UILabel!
    
    var paramEmail: String = ""
    
    var paramUpdate: Bool = false
    
    var paramInterval: Double = 0
}
