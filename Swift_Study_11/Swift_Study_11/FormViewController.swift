//
//  FormViewController.swift
//  Swift_Study_11
//
//  Created by DohyunKim on 2020/06/05.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
class FormViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: Any) {
        let ud = UserDefaults.standard
        
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        
        self.presentingViewController?.dismiss(animated: true)
        }

    }
    

