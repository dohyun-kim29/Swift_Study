//
//  ListViewcontroller.swift
//  MyMovieChart
//
//  Created by prologue on 2018. 2. 18..
//  Copyright © 2018년 SQLPRO. All rights reserved.
//

import UIKit
class ListViewController: UITableViewController {
  // 튜플 아이템으로 구성된 데이터 세트
  
  
  // 테이블 뷰를 구성할 리스트 데이터
  lazy var list : [MovieVO] = {
    var datalist = [MovieVO]()
    }
    return datalist
  }()

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.list.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // 주어진 행에 맞는 데이터 소스를 읽어온다.
    let row = self.list[indexPath.row]
    
    // ========= 여기부터 내용 변경됨 =========
    let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! MovieCell
    
    // 데이터 소스에 저장된 값을 각 아울렛 변수에 할당
    cell.title?.text = row.title
    cell.desc?.text = row.description
    cell.opendate?.text = row.opendate
    cell.rating?.text = "\(row.rating!)"
    
    // 추가된 부분: 이미지 뷰 처리
    cell.thumbnail.image = UIImage(named: row.thumbnail!)
    // ========= 여기까지 내용 변경됨 =========
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
  }
    
    override func viewDidLoad() {
        let url = "https://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=1&page=1&count=10&genreId=&order=releasedateasc"
        
        let apiURI : URL! = URL(string: url)
        
        let apidata = try! Data(contentsOf: apiURI)
        
        let log = NSString(data: apidata, encoding: String.Encoding.utf8.rawValue) ?? ""
            NSLog("API Result=\(log)")
        
        do {
            let apiDictionary = try JSONSerialization.jsonObject(with: apidata, options: []) as! NSDictionary
            
            let hoppin = apiDictionary["hoppin"] as! NSDictionary
            let movies = hoppin["movies"] as! NSDictionary
            let movie = movies["movie"] as! NSArray
            
            for row in movie {
                let r = row as! NSDictionary
                
                let mvo = MovieVO()
                
                mvo.title = r["title"] as? String
                mvo.description = r["genreNames"] as? String
                mvo.thumbnail = r["thumbnailImage"] as? String
                mvo.detail = r["linkUrl"] as? String
                mvo.rating = ((r["ratingAverage"] as! NSString).doubleValue)
                
                self.list.append(mvo)
            }
            
        } catch { }
    }
}
