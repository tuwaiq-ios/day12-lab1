//
//  MailTableViewController.swift
//  Day 12
//
//  Created by Eth Os on 05/03/1443 AH.
//

import UIKit

class MailTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var mailTV: UITableView!
    
    @IBOutlet weak var accountImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountImage.image = UIImage(named: "أثير")
        accountImage.layer.borderWidth = 1
        accountImage.layer.masksToBounds = false
        accountImage.layer.cornerRadius = accountImage.frame.height/2
        accountImage.clipsToBounds = true
        accountImage.backgroundColor = UIColor.clear
        
        mailTV.delegate = self
        mailTV.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inboxMails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mailCell", for: indexPath) as! MailCell
        let data = inboxMails[indexPath.row]
        
        cell.titleLabel.text = data.title
        cell.subtitleLabel.text = data.subTitle
        cell.messageLable.text = data.message
        cell.dateLabel.text = "\(data.time.formatted())"
        cell.mailImage.image = UIImage(named: data.image)
       
        cell.mailImage.layer.borderWidth = 1
            accountImage.layer.masksToBounds = false
        cell.mailImage.layer.cornerRadius = accountImage.frame.height/2
        cell.mailImage.clipsToBounds = true
        
        if data.isFavorit {
            cell.star.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }else{
            cell.star.setImage(UIImage(systemName: "star"), for: .normal)
        }
        return cell
    }
    
}
