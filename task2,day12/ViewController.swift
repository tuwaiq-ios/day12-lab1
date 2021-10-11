//
//  ViewController.swift
//  task2,day12
//
//  Created by Dr. Fahad on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let email1 = email[indexPath.row]
        let Cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1", for:indexPath) as! Cell
        Cell1.label1Cell.text = email1.nameSender
        Cell1.label2Cell.text = email1.massege
        Cell1.imageCell.image = UIImage(named: email1.image2)
        Cell1.imageCell.layer.masksToBounds = true
        Cell1.imageCell.layer.cornerRadius = image1.bounds.width / 2
        
        if email1.isfavorit {
            Cell1.image2Cell.image = UIImage (named: "نجمه صفراء")
        }
        else {
            Cell1.image2Cell.image = UIImage (named: "نجمه بيضاء")
        }
        return Cell1
    }
    

    @IBOutlet weak var botton2: UIButton!
    @IBOutlet weak var botton1: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tabelview: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = "23 unred"
        label1.text = "Inbox for Coco"
        image1.image = UIImage(named: "girl")
        
        image1.layer.masksToBounds = true
        image1.layer.cornerRadius = image1.bounds.width / 2
        
        
        tabelview.delegate = self
        tabelview.dataSource = self
    }
}

