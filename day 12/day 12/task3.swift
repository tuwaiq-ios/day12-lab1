//
//  task3.swift
//  day 12
//
//  Created by Maram Al shahrani on 06/03/1443 AH.
//

import UIKit

class Viewcontroller : UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    
    var cell3 = [(name:"Mike Wireframig", color1:UIColor.red),
                 (name:"Meeting with new teem", color1:UIColor.blue),
                 (name:"Make smartphone abb concepet", color1:UIColor.yellow),
                 (name:"Pic up loundry", color1:UIColor.gray),
                 (name:"Drink milk", color1:UIColor.purple)
                
    ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let de = tableView.dequeueReusableCell(withIdentifier: "celllab", for: indexPath) as!Labelcell
        de.labelCell?.text = cell3[indexPath.row].name
        de.backgroundColor = cell3[indexPath.row].color1
        
        
        return de
    
    }
    
    
    @IBOutlet weak var tabelview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelview.delegate = self
        tabelview.dataSource = self
        
    }
    
    
    
    
}
