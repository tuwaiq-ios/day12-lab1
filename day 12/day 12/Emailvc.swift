//
//  Emailvc.swift
//  day 12
//
//  Created by Maram Al shahrani on 05/03/1443 AH.
//

import UIKit

class conversation:UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = emailList[indexPath.row]
        
        let cellemail = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! cellemail
        
        cellemail.userLogo.image = UIImage(named: user.image)
        cellemail.userName.text = user.titel
        cellemail.userComent.text = user.subtitel
        cellemail.userSub.text = user.massege
        
        return cellemail
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tablecon.delegate = self
        tablecon.dataSource = self
        
    
        
        
    }

  
    @IBOutlet weak var tablecon: UITableView!
    
    
    
}
