//
//  screen1.swift
//  Day12-Afnan
//
//  Created by Fno Khalid on 05/03/1443 AH.
//

import UIKit

class emillist: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    struct email {
        let title: String
        let subtitile: String
        let message: String
        let image: String
        let isfavorit: String
        
        
    }
    
    let listmail = [
        
        email(title: "Sara",
              subtitile: "important",
              message: "send the file with attachment",
              image: "",
              isfavorit: "redstar"),
        email(title: "TUAIQ-Academy",
              subtitile: "cogratulation",
              message: "you are accepted in TUAIQ-Academy",
              image: "",
              isfavorit: "emptystar"),
        email(title: "Al-Bilad-Bank",
              subtitile: "Attention",
              message: "you have to visit us in the our brunch",
              image: "",
              isfavorit: ""),
        email(title: "",
              subtitile: "",
              message: "",
              image: "",
              isfavorit: "")
        
    
    
    
    
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listmail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let user = listmail[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "hi", for: indexPath) as! emailcell
        
        inboxlabel.text = "Inbox"
        unreadlbl.text = "2-Unread"
        personimage.image = UIImage (named: "personimage")
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inboxlabel.text = "Inbox"
        unreadlbl.text = "2-Unread"
        personimage.image = UIImage (named: "personimage")
    }
    
    
    @IBOutlet var Tableview: UIView!
    
    @IBOutlet weak var MailList: UITableView!
    
    @IBOutlet weak var personimage: UIImageView!
    
    @IBOutlet weak var inboxlabel: UILabel!
    
    @IBOutlet weak var unreadlbl: UILabel!
    
    @IBOutlet weak var penB: UIButton!
    
    @IBOutlet weak var searchB: UIButton!
    
    
    override func didReceiveMemoryWarning() {
        
    }
    
    
}

