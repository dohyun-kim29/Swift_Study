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
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel) { (_) in self.result.text = "취소 버튼을 클릭했습니다"}
        
        let ok = UIAlertAction(title: "확인", style: .default) {(_) in self.result.text = "확인 버튼을 클릭했습니다"}
        
        
        let exec = UIAlertAction(title: "실행", style: .destructive) {
            (_) in self.result.text = "실행 버튼을 클릭했습니다"
        }
        
        let stop = UIAlertAction(title: "중지", style: .default) {
            (_) in self.result.text = "중지 버튼을 클릭했습니다"
        }
        
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: false)
    }
}

