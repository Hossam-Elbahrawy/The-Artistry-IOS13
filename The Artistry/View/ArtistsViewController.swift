//
//  homeViewController.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 3/29/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit

class ArtistsViewController: UITableViewController{
    var artists: [Artist] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In Artists Screen")
        artists = getArtists()
//        artists =  parseJSON()
        print(artists.count)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ArtistTableViewCell {
          let artist = artists[indexPath.row]
              
              let cell = tableView.dequeueReusableCell(withIdentifier: "artistCell") as! ArtistTableViewCell
              cell.setArtist(artist: artist)
              
              return cell
    }

}

