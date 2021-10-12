//
//  ViewController.swift
//  tas3
//
//  Created by Dr. Fahad on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    

    var cell2 = [(name:"Make Wireframing" , color1: UIColor.red),                                       (name:"Meeting with new team" , color1 : UIColor.blue),
                (name:"Make smartphone app concept", color1 : UIColor.brown),
                (name:"pick up loundry", color1 : UIColor.gray),
                (name: "Drink milk", color1 : UIColor.yellow)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cell2.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let de = tabelview.dequeueReusableCell(withIdentifier: "celllab", for: indexPath) as! LabelCell
        de.labelCell?.text = cell2[indexPath.row].name
        de.backgroundColor = cell2[indexPath.row].color1

        return de
    }
    @IBOutlet weak var tabelview: UITableView!
    override func viewDidLoad() {
         super.viewDidLoad()

        tabelview.delegate = self
        tabelview.dataSource = self

    }
}

