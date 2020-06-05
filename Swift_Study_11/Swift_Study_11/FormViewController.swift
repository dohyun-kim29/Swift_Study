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
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
                return
            }
        
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
        }

    }
    

