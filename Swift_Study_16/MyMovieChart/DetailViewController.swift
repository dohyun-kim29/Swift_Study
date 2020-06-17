//
//  DetailViewController.swift
//  MyMovieChart
//
//  Created by DohyunKim on 2020/06/16.
//  Copyright © 2020 SQLPRO. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var wv: UIWebView!
    
    var mvo: MovieVO!
    
    override func viewDidLoad() {
        NSLog("linkurl = \(self.mvo.detail!), title=\(self.mvo.title!)")
        
        let navibar = self.navigationItem
        navibar.title = self.mvo.title
        
        if let url = self.mvo.detail {
            if let urlObj = URL(string: url) {
                let req = URLRequest(url: urlObj)
                self.wv.load(req)
            } else {
                let alert = UIAlertController(title: "오류", message: "잘못된 URL입니다", preferredStyle: .alert)
            
                let cancelAction = UIAlertAction(title: "확인", style: .cancel) {
                    (_) in _=self.navigationController?.popViewController(animated: true)
                }
                alert.addAction(cancelAction)
                self.present(alert, animated: false, completion: nil)
            }
            } else {
                let alert = UIAlertController(title: "오류", message: "필수 파라미터 누락", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "확인", style: .cancel) {
                    (_) in _=self.navigationController?.popViewController(animated: true)
                }
                
                alert.addAction(cancelAction)
                self.present(alert, animated: false, completion: nil)
            }
        }
        
    }
    

