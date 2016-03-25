//
//  Utilities.swift
//  Geotify
//
//  Created by Jason Brooks
//  Copyright Etter tech All rights reserved.
//

import UIKit
import MapKit

// MARK: Helper Functions

func showSimpleAlertWithTitle(title: String!, message: String, viewController: UIViewController) {
  let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
  let action = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
  alert.addAction(action)
  viewController.presentViewController(alert, animated: true, completion: nil)
}

func zoomToUserLocationInMapView(mapView: MKMapView) {
  if let coordinate = mapView.userLocation.location?.coordinate {
    let region = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000)
    mapView.setRegion(region, animated: true)
  }
}
