//
//  ViewController.swift
//  UserRegions
//
//  Created by Luke Pelling (i7673375) on 26/10/2015.
//  Copyright © 2015 Luke Pelling. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var myImage: UIImageView!
    
    let locationManager = CLLocationManager()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Map tracks the users location whilst zooming in with below code
        myMap.setUserTrackingMode(.Follow, animated: true)
   
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        
        let freshers = CLLocationCoordinate2D(latitude: 50.719799, longitude: -1.879439)
        let freshersRegion = CLCircularRegion(center: freshers, radius: 100, identifier: "freshers")
        locationManager.startMonitoringForRegion(freshersRegion)
        
        let location = CLLocationCoordinate2D(
            latitude: 50.716382,
            longitude: -1.875637
        )
        
        let pierAnnotation = MKPointAnnotation()
        pierAnnotation.coordinate = location
        pierAnnotation.title = "Pier Approach"
        pierAnnotation.subtitle = "Bournemouth"
        myMap.addAnnotation(pierAnnotation)
        
    }

}

extension ViewController: CLLocationManagerDelegate {
    
    
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("Entering \(region.identifier)")
        //changes image
        myImage.image = UIImage(named: region.identifier)
    
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Exiting \(region.identifier)")
    }
    
}