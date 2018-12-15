//
//  FreddyPerson.swift
//  usingJSON
//
//  Created by Diamonique Danner on 7/29/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import Foundation
import Freddy

struct FreddyPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        do {
            let json = try JSON(data: data)
            let name = try JSON.getString(at: 1, "name")
            let lat = try JSON.getString(at: 1, "address","geo","lat")
            let lon = try JSON.getString(at: 1, "address","geo","lng")
            let company = try JSON.getString(at: 1, "company")
        } catch {
            print(error)
            return nil
        }
        
        self.name = name
        self.location = "Lat: \(lat) Lon: \(lon)"
        self.company = company
    }
}
