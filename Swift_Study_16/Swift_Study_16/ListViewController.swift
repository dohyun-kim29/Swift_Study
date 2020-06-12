//
//  ListViewController.swift
//  Swift_Study_16
//
//  Created by DohyunKim on 2020/06/12.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
class ListViewController: UITableViewController {
    

    var dataset = [
               ("다크나이트", "영웅물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95),
               ("호우시절", "때를 알고 내리는 좋은 비", "2009-10-08", 7.31),
               ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2015-05-07", 9.19)
           ]
           
    lazy var list: [MovieVO] = {
               var datalist = [MovieVO]()
            for(title, desc, opendate, rating) in self.dataset {
                   let mvo = MovieVO()
                   mvo.title = title
                   mvo.description = desc
                   mvo.opendate = opendate
                   mvo.rating = rating
                   
                   datalist.append(mvo)
               }
               return datalist
           }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }
    
}
