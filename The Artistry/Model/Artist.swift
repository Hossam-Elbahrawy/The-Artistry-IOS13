//
//  Artist.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 3/28/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation

struct Artist: Decodable {
    
    let name: String
    let bio: String
    let imageUrl: String
    let works: [Painting]
    
    
    init(name: String, bio:String,imageUrl:String,works:[Painting]) {
        self.name = name
        self.bio = bio
        self.imageUrl = imageUrl
        self.works = works
    }
}
