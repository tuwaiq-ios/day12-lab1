//
//  ViewController.swift
//  day12Tas3
//
//  Created by ibrahim asiri on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! textCell
        
        cell.textLbl.text = textList[indexPath.row].name
        cell.backgroundColor = textList[indexPath.row].color
        cell.textLbl.textColor = UIColor.white
        

        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

class textCell: UITableViewCell{
    @IBOutlet weak var textLbl: UILabel!
    
    
}

let textList = [
    (name:"Make Wireframing", color: UIColor.orange),
    (name:"Meeting with new team", color: UIColor.gray),
    (name:"Make smartphone app concept", color: UIColor.blue),
    (name:"Pick up Loundry", color: UIColor.red),
    (name:"Drink Milk", color: UIColor.brown)

]
