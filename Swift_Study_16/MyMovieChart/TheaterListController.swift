//
//  TheaterListController.swift
//  MyMovieChart
//
//  Created by DohyunKim on 2020/06/18.
//  Copyright © 2020 SQLPRO. All rights reserved.
//

import UIKit
class TheaterListController: UITableViewController {
    
    var list = [NSDictionary]()
    
    var startPoint = 0
    
    override func viewDidLoad() {
        self.callTheatorAPI()
    }
    
    func callTheatorAPI() {
        let requestURI = "http://swiftapi.rubypaper.co.kr:2029/theater/list"
        
        let sList = 100
        let type = "json"
        
        let urlObj = URL(string: "\(requestURI)?s_page=\(self.startPoint)")
    }
}
