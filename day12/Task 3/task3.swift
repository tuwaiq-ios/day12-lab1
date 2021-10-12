//
//  task3.swift
//  day12
//
//  Created by  HANAN ASIRI on 06/03/1443 AH.
//

import UIKit

let message =
[ "Message anyone from anywhere" , "Text anyone from anywhere " , "Android phone to get started" , "the people who matter most" ]

class VC1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableview: UITableView!
    
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return message.count
  }
    
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    let hanancell = tableview.dequeueReusableCell(withIdentifier: "555", for: indexPath) as! task3cell
      hanancell.Messagelabel.text = message[indexPath.row]
    if indexPath.row % 2 == 0 {
       
        hanancell.Messagelabel.backgroundColor = UIColor.systemCyan
    } else {
        
        
        hanancell.Messagelabel.backgroundColor = UIColor.systemFill
    }
    return hanancell
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
    
    @IBOutlet var Messagelabel: UILabel!
    
}
