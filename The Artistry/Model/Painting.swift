//
//  Painting.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 3/28/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation

class Painting {
    let title: String
    let info: String
    let imageUrl: String
    
    init(title:String, info:String,imageUrl:String) {
        self.title = title
        self.info = info
        self.imageUrl = imageUrl
    }
}
