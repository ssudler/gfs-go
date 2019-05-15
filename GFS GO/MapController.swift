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
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: self.view.bounds, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Germantown Friends School"
        marker.snippet = "Philadelphia"
        marker.map = mapView
    }
}
