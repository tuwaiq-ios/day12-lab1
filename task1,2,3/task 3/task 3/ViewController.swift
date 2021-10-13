//
//  ViewController.swift
//  task 3
//
//  Created by PC on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cell2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = cell2[indexPath.row]
        let sa = tableView.dequeueReusableCell(withIdentifier: "celltabel", for: indexPath) as! cellTabel
        sa.labelCell.text = cell2[indexPath.row].name
        sa.labelCell.backgroundColor = cell2[indexPath.row].color1
        return sa
    }
        
    
    
    

    @IBOutlet weak var tabelview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.delegate = self
        tabelview.dataSource = self
        // Do any additional setup after loading the view.
    }


}

var cell2 = [(name:"Make Wireframing" , color1:UIColor.green),
             (name:"Meeting with new team" , color1:UIColor.red),
             (name:"pick up loundry" , color1:UIColor.blue),
             (name:"Drink milk" , color1:UIColor.yellow)]
