//
//  task3.swift
//  Day12-Afnan
//
//  Created by Fno Khalid on 06/03/1443 AH.
//

import UIKit

let message = [ "Hello" , "..." , "..." , "..." ]


class VC1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return message.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let afnancell = tableview.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! 
        
        afnancell.label1.text = message[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            afnancell.label1.backgroundColor = UIColor.systemPink
        } else {
            afnancell.label1.backgroundColor = UIColor.systemYellow
        }
        
        return afnancell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let messages = message[indexPath.row]
        
    }
}

class task3cell: UITableViewCell {
    
    
}
