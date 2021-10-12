//
//  Task3.swift
//  Lab12
//
//  Created by Me .. on 06/03/1443 AH.
//

import UIKit

class Viewcontroller: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableview: UITableView!
    
    
    var cell3 = [(name:"Make Wireframing",color1:UIColor.red),
                 (name:"Metting with new team",color1:UIColor.blue),
                 (name:"Make smartphone abb concept",color1:UIColor.yellow),
                 (name:"pic up loundry",color1:UIColor.gray),
                 (name:"Drink milk",color1:UIColor.purple)
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let de = tableView.dequeueReusableCell(withIdentifier: "celllab", for: indexPath) as!Labelcell
        
        de.LabelCell?.text = cell3[indexPath.row].name
        de.backgroundColor = cell3[indexPath.row].color1
        return de
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableview.delegate = self
        tableview.dataSource = self
    }
    
}
   
class Labelcell : UITableViewCell {
    
    
    @IBOutlet weak var LabelCell: UILabel!
    
    
}
      
      
 




