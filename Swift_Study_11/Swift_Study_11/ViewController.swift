//
//  ViewController.swift
//  Swift_Study_11
//
//  Created by DohyunKim on 2020/06/04.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    

    
    override func viewWillAppear(_ animated: Bool) {
       
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
        resultEmail.text = email
        }
        
        if let update = ad?.paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신안함"
        }
        
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분 마다"
        }
    
    
}



}
