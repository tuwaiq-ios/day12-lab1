//
//  VC2.swift
//  dey 12
//
//  Created by dmdm on 12/10/2021.
//

import UIKit

class VC2 : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewC: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emails = email [indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "567", for: indexPath) as! Cell1
        
        cell.cellImage.image = UIImage (named: emails.image)
        cell.cellName.text = emails.title
        cell.cellcomment.text = emails.subtitle
        cell.cellmessage.text = emails.massege
        return cell
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewC.delegate = self
        tableViewC.dataSource = self
        
    }
    
    
    
}
    
class Cell1: UITableViewCell {
    
  
    
    @IBOutlet weak var cellImage: UIImageView!
 
    
    @IBOutlet weak var cellName: UILabel!
    
    @IBOutlet weak var cellcomment: UILabel!
    
    @IBOutlet weak var cellmessage: UILabel!
    
    @IBOutlet weak var cellStar: UIButton!
    
}
