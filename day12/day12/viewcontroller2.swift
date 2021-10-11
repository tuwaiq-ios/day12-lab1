//
//  viewcontroller2.swift
//  day12
//
//  Created by Sara M on 05/03/1443 AH.
//

import UIKit

class viewcontroller2: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var TVemail: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let emails = email[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "emailcell", for: indexPath)
        as! cell1
        cell.titleEmail.text = emails.title
        cell.subtitleEmail.text = emails.subtitle
        cell.massageEmail.text = emails.massege
        cell.imageEmail.image = UIImage(named: emails.image)
        
        return cell
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        TVemail.delegate = self
        TVemail.dataSource = self
    }
}



class cell1 : UITableViewCell{
    
    
    @IBOutlet weak var imageEmail: UIImageView!
    @IBOutlet weak var titleEmail: UILabel!
    @IBOutlet weak var subtitleEmail: UILabel!
    @IBOutlet weak var massageEmail: UILabel!
}
