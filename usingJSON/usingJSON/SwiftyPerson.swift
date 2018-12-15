//
//  swiftyPerson.swift
//  usingJSON
//
//  Created by Diamonique Danner on 7/29/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import Foundation
import SwiftyJSON

struct SwiftyPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        let json = JSON(data: data)
        guard let name = json[0]["name"].string,
            let lat = json[0]["address"]["geo"]["lat"].string,
            let lon = json[0]["address"]["geo"]["lng"].string,
            let company = json[0]["company"]["name"].string
            else { return }
        
        self.name = name
        self.location = "Lat: \(lat) Long: \(lon)"
        self.company = company
    }
}
