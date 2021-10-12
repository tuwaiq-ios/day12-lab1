//
//  Reminder.swift
//  day12
//
//  Created by SARA SAUD on 3/5/1443 AH.
//

import UIKit
let list = ["Make Wiretframing","Meeting With Team","make smartphone app concept","pick up Loundry","Drink Milk"]

class VC3: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var rTable: UITableView!
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    
       
        let rCell = tableView.dequeueReusableCell(withIdentifier: "222", for: indexPath) as! CCell
        
        rCell.label.text = list[indexPath.row]
        
        if indexPath.row  == 0 {
            rCell.label.backgroundColor = UIColor.systemMint
            
        }
        
        else if  indexPath.row == 1 {
           
            rCell.label.backgroundColor = UIColor.lightGray
        }
        
        else if  indexPath.row == 2 {
           
            rCell.label.backgroundColor = UIColor.red
        }
        
        else if  indexPath.row == 3 {
           
            rCell.label.backgroundColor = UIColor.purple
        }
        
        else if  indexPath.row == 4 {
           
            rCell.label.backgroundColor = UIColor.yellow
        }
     
        return rCell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rTable.delegate = self
        rTable.dataSource = self
    }
    
    
}



class CCell:UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
}
