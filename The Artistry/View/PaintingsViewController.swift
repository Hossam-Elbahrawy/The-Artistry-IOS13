//
//  PaintingsViewController.swift
//  The Artistry
//
//  Created by Hossam Elbahrawy on 3/29/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import UIKit

class PaintingsViewVontroller: UITableViewController{
    var paintings: [Painting] = []
    var artist: Artist?
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        print("In Paintings Screen")
        print(artist!)
        paintings = getPaintings(artist: artist!)

       }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> PaintingTableViewCell {
            let painting = paintings[indexPath.row]
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "paintingCell") as! PaintingTableViewCell
        cell.setPainting(artistName:artist!.name, painting: painting)
                
                return cell
      }
}

