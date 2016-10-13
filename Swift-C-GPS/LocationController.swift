//
//  LocationController.swift
//  Swift-C-GPS
//
//  Created by Ricard Romeo Murgo on 12/10/16.
//  Copyright © 2016 Ricard. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

public class LocationController: NSObject, CLLocationManagerDelegate {
    public static let shared = LocationController()
    
    var manager = CLLocationManager()
    var cWrapper = LocationObjCWrapper()
    private var delegates = Array<LocationControllerDelegate>()
    
    public override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        
        if (UIDevice.currentDevice().systemVersion as NSString).floatValue > 8.0 {
            manager.requestWhenInUseAuthorization()
        }
        
        manager.startUpdatingLocation()
    }
    
    public func addDelegate(delegate: LocationControllerDelegate) {
        self.delegates.append(delegate)
    }
    
    public func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        for delegate in delegates {
            delegate.coordinatesChanged(newLocation.coordinate.latitude, longitude: newLocation.coordinate.longitude)
        }
        cWrapper.coordinatesChanged(newLocation.coordinate.latitude, newLocation.coordinate.longitude)
    }
}

public protocol LocationControllerDelegate {
    func coordinatesChanged(latitude: Double, longitude: Double)
}