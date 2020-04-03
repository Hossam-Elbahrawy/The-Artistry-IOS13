//
//  PaintingsController.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 4/2/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation

func getPaintings(artist: Artist) ->[Painting]{
    var tempPaintings:[Painting] = []
    
    tempPaintings = artist.works
    return tempPaintings
}
