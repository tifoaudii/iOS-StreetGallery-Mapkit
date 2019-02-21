//
//  ViewController.swift
//  Street Gallery
//
//  Created by Tifo Audi Alif Putra on 19/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {
    
    //MARK : Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK : Variables
    var locationManager = CLLocationManager()
    let status = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.startUpdatingLocation()

        configureLocationServices()
    }
    
    //MARK : Actions
    @IBAction func locationBtnPressed(_ sender: Any) {
        if status == .authorizedAlways || status == .authorizedWhenInUse {
            centerUserCoordinats()
        }
    }
}

extension MapVC: MKMapViewDelegate {
    
    func centerUserCoordinats () {
        guard let userCoordinate = locationManager.location?.coordinate else { return }
        
        let coordinateRegion = MKCoordinateRegion(center: userCoordinate, latitudinalMeters: regionRadius * 2, longitudinalMeters: regionRadius * 2)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

extension MapVC: CLLocationManagerDelegate {
    
    func configureLocationServices() {
        if status == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerUserCoordinats()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        centerUserCoordinats()
    }
}

