//
//  ViewController.swift
//  EmApp
//
//  Created by MacBook on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let email1 = email[indexPath.row]
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! cell
        
        cell1.label1Cell.text = email1.nameSender
        cell1.label2Cell.text = email1.message
        cell1.imageCell.image = UIImage(named: email1.image2)
        cell1.imageCell.layer.masksToBounds = true
        cell1.imageCell.layer.cornerRadius = image1.bounds.width/2
        
        if email1.isfavor {
            cell1.image2Cell.image = UIImage(named: "uu")
        }
        else {
            cell1.image2Cell.image = UIImage(named: "iu")
            
        }
            
           return cell1
        }
    
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
        
        
        
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        label2.text = "23 Unread"
        label1.text = "Inbox"
        image1.image = UIImage(named: "z0")
        
        image1.layer.masksToBounds = true
        image1.layer.cornerRadius = image1.bounds.width/2
        
        
        tableview.delegate = self
        tableview.dataSource = self
    }


}

