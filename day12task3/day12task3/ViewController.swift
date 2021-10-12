//
//  ViewController.swift
//  day12task3
//
//  Created by Macbook on 05/03/1443 AH.
//

import UIKit

struct Str {
    let name :String
}

let str = [Str(name :"Make wireframing"),
           Str(name :"Metting with new team"),
           Str(name :"Make smartphone app concept"),
           Str(name :"up loundry"),
           Str(name :"Drink Milk")
]

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return str.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as!CustuCell
        
        let le = str[indexPath.row]
        cell.label.text = le.name
        
        
        if indexPath.row % 2 == 0{
            cell.backgroundColor = UIColor.red
        }
        else {
            cell.backgroundColor = UIColor.yellow
            
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource=self
        tableview.delegate=self
    }
    
}

