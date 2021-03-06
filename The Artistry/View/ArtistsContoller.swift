//
//  ArtistsContoller.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 4/1/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//
import Foundation


func getArtists()->[Artist]{
    var tempArtist:[Artist] = []
    
    tempArtist = parseJSON()
    
    return tempArtist
}

func parseJSON()->[Artist]{
    
    var artists: [Artist] = []
    
    if let path = Bundle.main.path(forResource: "artists", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let jsonArtists = jsonResult["artists"] as? [Dictionary<String,Any>] {
                
                // Construct Data
                for jsonArtist in jsonArtists{
                    
                    let paintings = jsonArtist["works"]as! [Dictionary<String,String>]
                    var works: [Painting] = []
                    
                    for painting in paintings{
                        works.append(Painting(title: painting["title"]!, info: painting["info"]!, imageUrl: painting["image"]!))
                    }
                    let name = jsonArtist["name"]! as! String
                    let bio = jsonArtist["bio"]! as! String
                    let image = jsonArtist["image"]! as! String
                    artists.append(Artist(name: name , bio: bio, imageUrl: image, works: works))
                }
            }
        } catch {
            // handle error
            print("SHIT HAPPENDED")
        }
    }
    return artists
}
