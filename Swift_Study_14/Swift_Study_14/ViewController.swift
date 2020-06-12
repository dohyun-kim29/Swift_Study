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
        
        
        self.tf.borderStyle = UITextField.BorderStyle.line
        
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        
        self.tf.contentVerticalAlignment = .center
        
        self.tf.contentHorizontalAlignment = .center
        
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        
        self.tf.layer.borderWidth = 2.0
        
        // Do any additional setup after loading the view.
    }


    
}

