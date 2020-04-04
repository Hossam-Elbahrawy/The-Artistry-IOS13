//
//  PaintingTableViewCell.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 4/2/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit

import Kingfisher

class PaintingTableViewCell: UITableViewCell{
    
    @IBOutlet weak var PaintingImage: UIImageView!
    @IBOutlet weak var PaintaingTitle: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    func setPainting(artistName:String, painting: Painting){
        let imageUrl =  URL(string: painting.imageUrl)
        
        PaintingImage.kf.indicatorType = .activity
        PaintingImage.kf.setImage(with: imageUrl)
        self.artistName.text =  "By: \(artistName)"
        PaintaingTitle.text = painting.title
    }
}
