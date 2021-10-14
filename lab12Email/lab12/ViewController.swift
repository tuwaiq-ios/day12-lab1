//
//  ViewController.swift
//  lab12
//
//  Created by Kholod Sultan on 07/03/1443 AH.
//

import UIKit

class ViewController :UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let email1 = email[indexPath.row]
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        cell1.labelCell1.text = email1.nameSender
        cell1.labelCell2.text = email1.message
        cell1.imageCell.image=UIImage(named: email1.image2)
        cell1.imageCell.layer.masksToBounds = true
        cell1.imageCell.layer.cornerRadius = image1.bounds.width/2
        
        
       return cell1
    }
    

    
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var image1: UIImageView!
    
    

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "23 unread"
        label2.text = "InBox for coca "
        image1.image = UIImage(named: "be4")
        image1.layer.masksToBounds = true
        image1.layer.cornerRadius = image1.bounds.width/2
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
}

