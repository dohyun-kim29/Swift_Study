//
//  ListViewController.swift
//  Swift_Study_17
//
//  Created by DohyunKim on 2020/06/15.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
class ListViewController: UITableViewController {
    
    var list = [String]()
    

    @IBAction func add(_ sender: Any) {
        
        let alert = UIAlertController(title: "목록 입력", message: "추가될 글을 작성해주세요", preferredStyle: .alert)
        
        alert.addTextField() { (tf) in tf.placeholder = "내용을 입력하세요"}
        
        let ok = UIAlertAction(title: "OK", style: .default) { (_) in
            if let title = alert.textFields?[0].text {
            self.list.append(title)
            self.tableView.reloadData()
            }
            
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        
        cell.textLabel?.numberOfLines = 0
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.estimatedRowHeight = 50
        self.tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    
}
