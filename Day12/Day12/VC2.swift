//
//  Email.swift
//  Day12
//
//  Created by Tsnim Alqahtani on 05/03/1443 AH.
//

    import UIKit
    class VC2 : UIViewController, UITableViewDelegate, UITableViewDataSource {
        
        struct Emails {
            
            let title: String
            let subtitle : String
            let massege : String
            let image : String
            let isFavorite : Bool
        }
        
        
        let email = [
            Emails (
                title: "American Canyon",
                subtitle: "Hot summer sale!",
                massege: "The boldest styles,now at the most adven...",
                image: "American Canyon",
                isFavorite: true ),
            
            Emails(
                title: "Reese,Willy,Me,Dani",
                subtitle: "Are you ready to 🌊🌊?? ",
                massege: "Gonna be so fun!! Here's the deets..",
                image: "Reese,Willy,Me,Dani",
                isFavorite: false ),
            
            Emails (
                title: "O + X Outfitters",
                subtitle: "online & in-store",
                massege: "Flash sale!20% off all summer swim...",
                image: "O + X Outfitters",
                isFavorite: true),
            
            Emails (
                title: "Gabrielle Brown",
                subtitle: "Quote for repairs",
                massege: "Hi Thaisa,Attached is a quote for all...",
                image: "Gabrielle Brown",
                isFavorite: true),
            
            Emails(
                title: "Miranda Le",
                subtitle: "Roadmap for launch",
                massege: "Hey Thaisa,acould you send again?",
                image: "Miranda Le",
                isFavorite: false),
            
            Emails(
                title: "Matt Becker",
                subtitle: "Hotels for orlando Trip",
                massege: "These are our option,any pref?",
                image: "Matt Becker",
                isFavorite: true)
            
            
            
        ]
        
        
        
        @IBOutlet weak var MTV: UITableView!
        
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return email.count
        }
        
        func tableView(_ tableView: UITableView,
                       cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            
            let emails = email [indexPath.row]
            let  cell =
            tableView.dequeueReusableCell(withIdentifier: "emailcell", for: indexPath ) as! cell1
            cell.titleEmail.text = emails.title
            cell.subtitleEmail.text = emails.subtitle
            cell.massageEmail.text = emails.massege
            cell.imageEmail.image = UIImage(named: emails.image)
            
            return cell
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            MTV.delegate=self
            MTV.dataSource=self
        }
    }


    class cell1 : UITableViewCell {
        
        @IBOutlet weak var subtitleEmail: UILabel!
        @IBOutlet weak var titleEmail: UILabel!
        
        @IBOutlet weak var imageEmail: UIImageView!
        
        @IBOutlet weak var massageEmail: UILabel!
        
        
    }

