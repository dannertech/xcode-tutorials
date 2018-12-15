//
//  Posts.swift
//  newsFeed
//
//  Created by Diamonique Danner on 5/1/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import Foundation

class Post {
    var id: String
    var author:String
    var text: String
    
    init(id:String, author: String, text: String) {
        self.id = id
        self.author = author
        self.text = text
    }
}
