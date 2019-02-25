//
//  Constant.swift
//  Street Gallery
//
//  Created by Tifo Audi Alif Putra on 19/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import Foundation

//SEGUE IDENTIFIER
let SPLASH_SEGUE = "splash_segue"

//KEY
let API_KEY = "8b5a8a4f44bed948efe749f9fed2a79d"

func getPhotoURL(forAPiKey key: String, forAnnotation annotaion: DroppablePin, numberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotaion.coordinate.latitude)&lon=\(annotaion.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
    return url
}
