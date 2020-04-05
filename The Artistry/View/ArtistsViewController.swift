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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ArtistToPainting"{
            let destViewController = segue.destination as! PaintingsViewVontroller
            destViewController.artist = sender as? Artist
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let artist = artists[indexPath.row]
        performSegue(withIdentifier: "ArtistToPainting", sender: artist)
        
    }
    
}

