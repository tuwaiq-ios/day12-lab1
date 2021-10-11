//
//  viewcontroller3.swift
//  day12
//
//  Created by Sara M on 06/03/1443 AH.
//

import UIKit

let Reminders: [String] = ["Make Wireframing", "Meeting with new team", "Make smartphone app concept", "Pick up Loundry", "Drink Milk"]

class viewcontroller3: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reminders.count
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reminder = Reminders[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tablecell
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

class tablecell: UITableViewCell{
    
    
}
