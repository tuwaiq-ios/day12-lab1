//
//  ViewController.swift
//  day12-3
//
//  Created by sally asiri on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var cell2 = [(name:"make Wierframing" , color1: UIColor.red),
                 (name:"meeting with new team", color1: UIColor.blue),
                 (name:"make smartphone app concept",color1: UIColor.brown),
                 (name:"pick up loundry",color1: UIColor.gray),
                 (name:"Drink milk", color1: UIColor.yellow)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell2.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelview.delegate = self
        tabelview.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let de = tableView.dequeueReusableCell(withIdentifier: "cell1b", for: indexPath) as!
        Labelcell
        de.labelcell?.text = cell2[indexPath.row].name
        de.backgroundColor = cell2[indexPath.row].color1
        return de
    }

    
    @IBOutlet weak var tabelview: UITableView!
    
    
    }



