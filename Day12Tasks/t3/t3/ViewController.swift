//
//  ViewController.swift
//  t3
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cell2 = [(name: "Make Wireframing", color1: UIColor.orange),
                 (name: "Meeting with new team", color1: UIColor.systemPink),
                 (name: "Make smartphone app concept", color1: UIColor.gray),
                 (name: "Pick up loundry", color1: UIColor.red),
                 (name: "Drink milk", color1: UIColor.blue)]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let de = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LabelCell
        de.labelCell?.text = cell2[indexPath.row].name
        de.backgroundColor = cell2[indexPath.row].color1
        
        return de
    }
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }


}

