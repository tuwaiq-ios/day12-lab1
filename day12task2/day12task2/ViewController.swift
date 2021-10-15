//
//  ViewController.swift
//  day12task2
//
//  Created by HANAN on 06/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let email1 = email [indexPath.row]
        let Cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1" , for: indexPath) as! Cell
        
        Cell1.labelA.text = email1.Nameperson
        Cell1.labelT.text = email1.massage
        Cell1.imageys.image = UIImage(named:email1.ims)
        Cell1.imageys.layer.masksToBounds = true
        Cell1.imageys.layer.cornerRadius = imgp.bounds.width / 2
        
        if  email1.isFavorit {
            
            Cell1.Imageym.image = UIImage (named: "fav")
        }
        else {
            
            Cell1.Imageym.image = UIImage (named: "unfav")
        }
        return Cell1
    }
  
    @IBOutlet weak var inbox: UILabel!
    @IBOutlet weak var imgp: UIImageView!
    
    @IBOutlet weak var unread: UILabel!
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    unread.text = "30 Unread"
    inbox.text = "Inbox"
    imgp.image = UIImage(named: "Rema")
    
        imgp.layer.masksToBounds = true
        imgp.layer.cornerRadius = imgp.bounds.width/2
    
    tableview.delegate = self
    tableview.dataSource = self
  }
}


