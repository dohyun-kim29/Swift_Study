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
    

    @IBOutlet weak var wv: WKWebView!
    
    var mvo: MovieVO!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        
        self.wv.navigationDelegate = self
        
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
extension DetailViewController: WKNavigationDelegate {
    
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        self.spinner.startAnimating()
        
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.spinner.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.spinner.stopAnimating()
        
        self.spinner.stopAnimating()
        self.alert("상세 페이지를 읽어오지 못했습니다.") {
            _ = self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        self.spinner.stopAnimating()
        self.alert("상세 페이지를 읽어오지 못했습니다.") {
            
            
            _ = self.navigationController?.popViewController(animated: true)
        }
    }
      
}


extension UIViewController {
    func alert(_ message: String, onClick: (() -> Void)? = nil) {
        
        let controller = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .cancel) { (_) in onClick?()
        })
        
        DispatchQueue.main.async {
            self.present(controller, animated: false)
        }
    }
}
    

