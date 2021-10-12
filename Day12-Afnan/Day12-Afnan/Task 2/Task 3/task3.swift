//
//  task3.swift
//  Day12-Afnan
//
//  Created by Fno Khalid on 06/03/1443 AH.
//

import UIKit


let message = [ "Clean The Apartment" , "Go to the Pharmesy" , "Meeting with new Teem" , "call Dady" ]

class VC1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return message.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let afnancell = tableview.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! task3cell
        
        afnancell.Messagelabel.text = message[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            
            afnancell.Messagelabel.backgroundColor = UIColor.systemCyan
        } else {
            afnancell.Messagelabel.backgroundColor = UIColor.systemFill
        }
        
        return afnancell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let messages = message[indexPath.row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
    }
}

class task3cell: UITableViewCell {
    
    @IBOutlet weak var Messagelabel: UILabel!
    
    
    
}
    

