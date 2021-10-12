//
//  Task3.swift
//  day12
//
//  Created by ibrahim asiri on 05/03/1443 AH.
//

import UIKit

var textList = [
    "Make Wireframing",
    "Meeting with new team",
    "Make smartphone app concept",
    "Pick up Loundry",
    "Drink Milk"
]

class Task3: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return textList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
}

class Task3Cell: UITableViewCell{
    
    @IBOutlet weak var textLbl: UILabel!
    
}
