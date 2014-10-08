//
//  ViewController.swift
//  Where am I
//
//  Created by bekir tura on 08/10/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController ,CLLocationManagerDelegate {
    
    @IBOutlet weak var Latitudetext: UILabel!
    
    @IBOutlet weak var Longitudetext: UILabel!
  
    @IBOutlet weak var Coursetext: UILabel!
    
    @IBOutlet weak var Speedtext: UILabel!
    
    @IBOutlet weak var Altitudetext: UILabel!
    
    @IBOutlet weak var Adresstext: UILabel!
    
    var manager:CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        var userLocation:CLLocation = locations[0] as CLLocation
        Latitudetext.text = "\(userLocation.coordinate.latitude)"
        Longitudetext.text = "\(userLocation.coordinate.longitude)"
        Coursetext.text = "\(userLocation.course)"
        Speedtext.text = "\(userLocation.speed)"
        Altitudetext.text = "\(userLocation.altitude)"
        CLGeocoder().reverseGeocodeLocation(userLocation, completionHandler:{(placemarks,error)in
            if((error) != nil){ println("error:\(error)")
            }else{
                var subThoroughfare = ""
                let p = CLPlacemark(placemark: placemarks[0] as CLPlacemark)
                if((p.subThoroughfare) != nil){
                     subThoroughfare = p.subThoroughfare
                }
               self.Adresstext.text = "\(subThoroughfare) \(p.thoroughfare) \n \(p.subLocality) \n \(p.subAdministrativeArea) \n Postalcode = \(p.postalCode) \n country = \(p.country)"
            
            }
        
        
        })
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

