//
//  ViewController.swift
//  day12
//
//  Created by Kholod Sultan on 07/03/1443 AH.
//

import UIKit

class ViewController : UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var cell2 = [(name:"Make wireframig",color1:UIColor.systemPink),
              (name:"Meeting with me",color1: UIColor.systemCyan),
               (name:"Make smartphone app concept",color1 :UIColor.systemFill),
                     (name:"Pick up loundray",color1 :UIColor.systemMint),
                 (name:"Drink milk",color1 :UIColor.lightGray)]
                      
    
                      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell2.count
                      }
                      
                      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let de = tableView.dequeueReusableCell(withIdentifier: "celllab", for: indexPath) as! labelcell
            de.label1?.text = cell2[indexPath.row].name
            de.backgroundColor = cell2[indexPath.row].color1
                    return de
    }
                      
                      @IBOutlet weak var tableview: UITableView!
                      
                       override func viewDidLoad() {
                       super.viewDidLoad()
        tableview.delegate=self
        tableview.dataSource=self
                      
    
        // Do any additional setup after loading the view.
    }


}


