//
//  ArtistsContoller.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 4/1/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//


func getArtists()->[Artist]{
    var tempArtist:[Artist] = []
    
    let painting1 = Painting(title: "The starry Night", info: "This is the info of the image", imageUrl: "https://i1.wp.com/dreamingsophiabook.com/wp-content/uploads/2017/12/Guernica-1.jpg?resize=640%2C235")
    let artist1 = Artist(name: "Hossam Gogh", bio: "This is the bio of me", imageUrl: "https://www.biography.com/.image/t_share/MTY2NTIzNTAyNjgwMDg5ODQy/pablo-picasso-at-his-home-in-cannes-circa-1960-photo-by-popperfoto_getty-images.jpg", works: [painting1])
    
    tempArtist.append(artist1)
    return tempArtist
}
