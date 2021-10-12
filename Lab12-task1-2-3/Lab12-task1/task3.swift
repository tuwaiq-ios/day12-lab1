//
//  task3VC.swift
//  Lab12-task1
//
//  Created by Abdulaziz on 06/03/1443 AH.
//

import UIKit


struct label3{
    let name:String
}


let lbl = [
label3(name: "Make Wireframing"),
label3(name: "Meeting with new team"),
label3(name: "Makesmartphone"),
label3(name: "Pick up loundry"),
label3(name: "Drink Milk")
]


class task3VC:  UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var T3: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lbl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let labeel = tableView.dequeueReusableCell(withIdentifier: "2345", for: indexPath) as! Cell3
        let lbe3 = lbl[indexPath.row]
        
        labeel.lebl.text = lbe3.name
        
        if indexPath.row % 2 == 0 {
            labeel.backgroundColor = UIColor.red
        } else{
            labeel.backgroundColor = UIColor.cyan
        }
        
            
            
            
        return labeel
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        T3.delegate = self
        T3.dataSource = self
    }
    
    
    
}

