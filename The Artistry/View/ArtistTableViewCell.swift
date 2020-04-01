//
//  ArtistTableViewCell.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 4/1/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher
class ArtistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistBio: UITextView!
    
  func  setArtist(artist: Artist){
        artistName.text = artist.name
    let imageUrl =  URL(string: artist.imageUrl)
    artistImage.kf.setImage(with: imageUrl,placeholder:UIImage(named: "placeholderImage"))
        artistBio.text = artist.bio
    }
}
