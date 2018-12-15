//
//  GlossPerson.swift
//  usingJSON
//
//  Created by Diamonique Danner on 7/29/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import Foundation
import Gloss

struct GlossPerson {
    let name: String
    let location: String
    let company: String
    
    init?(data: Data) {
        self.name = ""
        self.location = ""
        self.company = ""
    }
}
