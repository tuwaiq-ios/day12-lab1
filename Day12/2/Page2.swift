//
//  Page2.swift
//  Day12
//
//  Created by m-alqhtanion 05/03/1443 AH.
//

import Foundation
import UIKit

class Page2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "2", for: indexPath) as! PageCell2
        
        let row = data2 [indexPath.row]
        
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.height / 2
        
        cell.imageCell.image = UIImage (named: row.image)
        cell.nameCell.text = row.name
        cell.typeCell.text = row.type
        cell.messageCell.text = row.message
        cell.timeCell.text = row.time
        
        if row.star{
            cell.starCell.image = UIImage (named: "star")
        }
        else{
            cell.starCell.image = UIImage (named: "starG")
        }
        
        return cell
    }
    override func viewDidLoad() {
        TV2.delegate = self
        TV2.dataSource = self
        
        image.layer.cornerRadius = image.frame.height / 2
        
        
    }
    
    @IBOutlet weak var TV2: UITableView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var inbox: UILabel!
    @IBOutlet weak var messageNumber: UILabel!
    @IBOutlet weak var search: UIButton!
    @IBOutlet weak var write: UIButton!
    
}



class PageCell2: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var typeCell: UILabel!
    @IBOutlet weak var messageCell: UILabel!
    @IBOutlet weak var timeCell: UILabel!
    @IBOutlet weak var starCell: UIImageView!
    
}
