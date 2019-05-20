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
        
        let camera = GMSCameraPosition.camera(withLatitude: 40.0328139, longitude: -75.1712208, zoom: 18.0)
        let mapView = GMSMapView.map(withFrame: self.view.bounds, camera: camera)
        view = mapView
        mapView.mapType = .satellite
        
        func addMarker(title: String, snippet: String, lat: Double, long: Double) {
            let position = CLLocationCoordinate2D(latitude: lat, longitude: long)
            let marker = GMSMarker(position: position)
            marker.title = title
            marker.snippet = snippet
            marker.map = mapView
        }
        
        addMarker(title: "Main Building", snippet: "Germantown Friends", lat: 40.032720, long: -75.171593)
        
        addMarker(title: "Hargroves", snippet: "Germantown Friends", lat: 40.032897, long: -75.170617)
    }
}
