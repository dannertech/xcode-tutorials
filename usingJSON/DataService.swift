//
//  dataService.swift
//  usingJSON
//
//  Created by Diamonique Danner on 7/29/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import Foundation

class DataService {
    static let shared = DataService()
    private init() {}
    
    func getUsers(completion: (Data) -> Void) {
        guard let path = Bundle.main.path(forResource: "someJSON", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        let data = try! Data(contentsOf: url)
        completion(data)
    }
}
