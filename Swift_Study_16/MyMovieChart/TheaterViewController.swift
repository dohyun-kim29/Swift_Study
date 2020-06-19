//
//  TheaterViewController.swift
//  MyMovieChart
//
//  Created by DohyunKim on 2020/06/19.
//  Copyright © 2020 SQLPRO. All rights reserved.
//

import UIKit
import MapKit
class TheaterViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    var param: NSDictionary!
    
    override func viewDidLoad() {
        self.navigationItem.title = self.param["상영관명"] as? String
        
        let lat = (param?["위도"] as! NSString).doubleValue
        
        let lng = (param?["경도"] as! NSString).doubleValue
        
        
        let location = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        
        let regionRadius: CLLocationDistance = 100
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location, regionRadius, regionRadius)
        
        self.map.setRegion(coordinateRegion, animated: true)
    }
}
