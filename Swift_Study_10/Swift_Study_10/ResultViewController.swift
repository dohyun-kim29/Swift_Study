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
    
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated : true)
    }
}
