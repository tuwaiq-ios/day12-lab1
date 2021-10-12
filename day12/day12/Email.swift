//
//  Email.swift
//  day12
//
//  Created by SARA SAUD on 3/5/1443 AH.
//

import UIKit
//link class
class Email: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var myMail: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emails.count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let mail2 = emails[indexPath.row]
            let mails2 = tableView.dequeueReusableCell(withIdentifier: "SaraMail", for: indexPath) as! meilCell
        
        mails2.mailTaitle.text = mail2.title
        mails2.mailSubTitle.text = mail2.subTitle
        mails2.mailMessage.text = mail2.message
        mails2.mailTime.text = mail2.time
        mails2.mailFaivort.image = UIImage(named:mail2.image)
        mails2.imageMail.image = UIImage(named: mail2.image)
        
       return mails2
        
    }
    
    
            override func viewDidLoad() {
                super.viewDidLoad()
        
                    myMail.delegate = self
                    myMail.dataSource = self
                
            }
    
    

    
}
    struct mail {
        let title : String
        let subTitle : String
        let message : String
        let image : String
        var time : String
        var fav : String
        
    
}
//data

//information
var emails = [mail(title: "American Canyon",
                   subTitle: "Hot summer sale!",
                   message: "the boldest styles now at most adven...",
                   image: "m5",
                   time: "AD",
                   fav: "⭐️"),
              mail(title: " Reese, Willy, Me, Dani",
                   subTitle: "Are you Ready to 🌊🌊🌊?",
                    message: "Gonna be so fun!! Here's the deets:..",
                   image: "m2",
                   time: "10m",
                   fav: "⭐️"),
              mail(title: "O + X Outfitters",
                subTitle: "Online shoping",
                message: "Flash Sale !20% off all summer swim ...",
                                   image: "m3",
                                   time: "1h",
                                   fav: "⭐️"),
              mail(title: "Gabrielle Brown",
                   subTitle: "Qoute for repairs",
                    message: "Hi Thaisa attached is a quote for all...",
                   image: "m4",
                   time: "2h",
                   fav: "⭐️"),

]


class meilCell : UITableViewCell {
    
    @IBOutlet weak var imageMail: UIImageView!
    
    @IBOutlet weak var mailTaitle: UILabel!
    
    @IBOutlet weak var mailSubTitle: UILabel!
    
    @IBOutlet weak var mailMessage: UILabel!
    
    @IBOutlet weak var mailFaivort: UIImageView!
    
    @IBOutlet weak var mailTime: UILabel!
    
}
//func


