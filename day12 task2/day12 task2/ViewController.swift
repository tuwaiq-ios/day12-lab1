//
//  ViewController.swift
//  day12 task2
//
//  Created by Macbook on 05/03/1443 AH.
//

import UIKit


struct Email {
    let title : String
    let subtitle : String
    let meesage : String
    let logo : String
    let isStar : String
}

let list = [
    Email(
        title: "Marican",
        subtitle: "Hot summer sale",
        meesage: "The bold style",
        logo:"mm",
        isStar: "star"
    ),
    Email(
        title: "UBER",
        subtitle: "online&store",
        meesage: "flash sale 20%",
        logo:"uber",
        isStar: "star.fill"
    )
]
class ViewController: UIViewController,
                      UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    @IBOutlet weak var tableview: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let le = list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath
        ) as! CustumCell
        
        cell.title.text = le.title
        cell.pic.image = UIImage(named: le.logo)
        cell.subtitle.text = le.subtitle
        cell.message.text = le.meesage
        cell.isstar.image = UIImage(systemName: le.isStar)
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource=self
        tableview.delegate=self        // Do any additional setup after loading the view.
    }
    
    
}

