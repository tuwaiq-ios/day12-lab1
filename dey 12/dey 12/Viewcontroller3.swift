//
//  VC3.swift
//  dey 12
//
//  Created by dmdm on 12/10/2021.
//

import UIKit

let reminder: [String] =
  ["Making Wireframing","Meeting with new team","Make smartPhone app concept","Pick up loundry","Drink milk"]
let colors: [UIColor] = [
    UIColor.blue, UIColor.brown ,
    UIColor.cyan, UIColor.purple ,
    UIColor.gray, UIColor.orange,

    
]


class Viewcontroller3: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminder.count
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reminderCell = reminder[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Tablecell3
        
       cell.lable5.text = reminderCell
      cell.lable5.backgroundColor = colors[indexPath.row]
     
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

class Tablecell3: UITableViewCell{
    
    @IBOutlet weak var lable5: UILabel!
    
    
    
}
