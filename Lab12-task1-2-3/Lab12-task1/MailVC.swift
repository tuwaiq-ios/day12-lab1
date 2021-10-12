//
//  MailVC.swift
//  Lab12-task1
//
//  Created by Abdulaziz on 05/03/1443 AH.
//

import UIKit

class mailVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
   
    @IBOutlet weak var mailVC: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inbox.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Mcell = tableView.dequeueReusableCell(withIdentifier: "123456", for: indexPath) as! MailCell
        let mail = inbox[indexPath.row]
        
        Mcell.mailpic.image = UIImage(named: mail.iconMail)
        Mcell.title.text = mail.Title
        Mcell.subTitle.text = mail.SubTitle
        Mcell.msg.text = mail.Msg
        
            
            
        return Mcell
    }
    
    
    override func viewDidLoad() {
        mailVC.dataSource = self
        mailVC.dataSource = self
        
    }
    
}
