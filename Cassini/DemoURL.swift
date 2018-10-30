//
//  DemoURL.swift
//  Cassini
//
//  Created by Denver Stove on 30/10/18.
//  Copyright © 2018 Denver Stove. All rights reserved.
//

import Foundation

struct DemoURL
{
//    static let uwa = URL(string: "https://i2.wp.com/pelicanmagazine.com.au/wp-content/uploads/2018/03/university-western-australia-uwa-tower01.jpg?resize=700%2C500")
    
    static let uwa = URL(string: "http://4.bp.blogspot.com/-Y3tzwoKndQk/TZbgms0shVI/AAAAAAAAA_c/MKV5rRX7_4A/s1600/Photo-0120.jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
        "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary <String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
