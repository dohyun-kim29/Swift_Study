//
//  ViewController.swift
//  Swift_Study_12
//
//  Created by DohyunKim on 2020/06/09.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        let ok = UIAlertAction(title: "확인", style: .default)
        
        let exec = UIAlertAction(title: "실행", style: .destructive)
        
        let stop = UIAlertAction(title: "중지", style: .default)
        
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: false)
    }
}

