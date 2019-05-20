//
//  MapController.swift
//  GFS GO
//
//  Created by ssudler on 5/9/19.
//  Copyright © 2019 MadLads. All rights reserved.
//

import Foundation
import GoogleMaps
import GooglePlaces

class MapController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         /* let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let mapVC = self.storyboard?.instantiateViewController(withIdentifier: "Map Controller") as! MapController */
        
        let camera = GMSCameraPosition.camera(withLatitude: 40.0328139, longitude: -75.1712208, zoom: 18.0)
        let mapView = GMSMapView.map(withFrame: self.view.bounds, camera: camera)
        view = mapView
        mapView.mapType = .satellite
        
        /* class newMarker {
            var name: String
            var snippet: String
            var latitude: Double
            var longitude: Double
            var theview: UIView
            var thecontroller: UIViewController
            
            init(name: String, snippet: String, latitude: Double, longitude: Double, theview: UIView, thecontroller: UIViewController) {
                self.name = name
                self.snippet = snippet
                self.latitude = latitude
                self.longitude = longitude
                self.theview = theview
                self.thecontroller = thecontroller
            }
            
            func addMarker() {
                theview = GMSMapView.map(withFrame: self.thecontroller.view.bounds, camera: GMSCameraPosition.camera(withLatitude: 40.0328139, longitude: -75.1712208, zoom: 18.0))
            }
        } */

        /* var marker1 = newMarker(name: "Main Building", snippet: "Germantown Friends", latitude: 40.032720, longitude: -75.171593, theview: view, thecontroller: mapVC)
        
        var marker2 = newMarker(name: "Hargroves Center", snippet: "Germantown Friends", latitude: 40.032897, longitude: -75.170617, theview: view, thecontroller: mapVC) */
        
        let position = CLLocationCoordinate2D(latitude: 40.032720, longitude: -75.171593)
        let marker = GMSMarker(position: position)
        marker.title = "Main Building"
        marker.snippet = "Germantown Friends School"
        marker.map = mapView
        
        let position2 = CLLocationCoordinate2D(latitude: 40.032897, longitude: -75.170617)
        let marker2 = GMSMarker(position: position2)
        marker2.title = "Hargroves Center"
        marker2.snippet = "Germantown Friends School"
        marker2.map = mapView
        
    }
}
