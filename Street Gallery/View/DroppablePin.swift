//
//  File.swift
//  Street Gallery
//
//  Created by Tifo Audi Alif Putra on 21/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    var identifier: String = ""
    dynamic var coordinate: CLLocationCoordinate2D
    
    init(identifier: String, coordinate: CLLocationCoordinate2D) {
        self.identifier = identifier
        self.coordinate = coordinate
        super.init()
    }
}
