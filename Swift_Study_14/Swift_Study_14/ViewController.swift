//
//  ViewController.swift
//  Swift_Study_14
//
//  Created by DohyunKim on 2020/06/12.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tf.placeholder = "값을 입력하세요"
        
        self.tf.keyboardType = UIKeyboardType.alphabet
        
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark
        
        self.tf.returnKeyType = UIReturnKeyType.join
        
        self.tf.enablesReturnKeyAutomatically = true
        
        // Do any additional setup after loading the view.
    }


    
}

