//
//  viewcontroller3.swift
//  day12
//
//  Created by Sara M on 06/03/1443 AH.
//

import UIKit

let reminder: [String] =
  ["Making Wireframing","Meeting with new team","Make smartPhone app concept","Pick up loundry","Drink milk"]
let colors: [UIColor] = [
    UIColor.blue, UIColor.brown ,
    UIColor.cyan, UIColor.purple ,
    UIColor.gray, UIColor.orange,

    
]


class viewcontroller3: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminder.count
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reminderCell = reminder[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tablecell3
        
        cell.labelName.text = reminderCell
        cell.labelName.backgroundColor = colors[indexPath.row]
     
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

class tablecell3: UITableViewCell{
    
    @IBOutlet weak var labelName: UILabel!
    
}
