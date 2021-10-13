//
//  Reminder.swift
//  Day12
//
//  Created by Tsnim Alqahtani on 06/03/1443 AH.
//

import UIKit
let list: [String] =
 ["Making Wireframing","Meeting with new team","Make smartPhone app concept","Pick up loundry","Drink milk"]


let colors: [UIColor] = [
  UIColor.blue, UIColor.brown ,
  UIColor.cyan, UIColor.purple ,
  UIColor.gray, UIColor.orange,
]

class Reminder : UIViewController , UITableViewDelegate ,UITableViewDataSource {
    
    
    @IBOutlet weak var reTable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let reminder =  list [indexPath.row]
        let de =
        tableView.dequeueReusableCell(withIdentifier: "111", for: indexPath) as! cell2
        de.label1.text = reminder
        de.label1.backgroundColor = colors [indexPath.row]
        return de
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reTable.delegate = self
        reTable.dataSource = self
        
    }
}
class cell2 :UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    
    
}

