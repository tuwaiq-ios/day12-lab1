//
//  tableviewCell.swift
//  day12
//
//  Created by  HANAN ASIRI on 05/03/1443 AH.
//
import UIKit







struct Email {
    let name: String
    let logo : String
    let say: String
    let faviort: String
    let time: Double
}

let mail = [
    
    Email(
    name: "book is a medium for recording information in the form of writing or images, ",
    logo: "3-3",
    say: "",
    faviort: "",
    time: 8.00),
    
    Email(
    name: "composed of many pages bound together",
    logo: "3-3",
    say: "",
    faviort: "",
    time: 7.00),
    
    Email(
    name: "We have popular genres like Literature & Fiction",
    logo: "3-3",
    say: "",
    faviort: "",
    time: 4.00),
    
    Email(
    name: " Depository is the world's most international online ",
    logo: "3-3",
    say: "",
    faviort: "",
    time: 2.00)

]

class vctab : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var TV: UITableView!
   

   // var counter:[String:Int] = [:]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mailBox = mail[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "444", for: indexPath) as! tableviewCell
        
        cell.userLogo.image = UIImage(named: "3-3")
        cell.userName.text = mailBox.name
        cell.userComent.text = mailBox.say
        cell.userTime.text = "\(mailBox.time)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TV.delegate = self
        TV.dataSource = self
        
    }
    
    
}

class tableviewCell : UITableViewCell {
    
    @IBOutlet var userLogo: UIImageView!
   
    @IBOutlet var userName: UILabel!
    
    @IBOutlet var userComent: UILabel!

    @IBOutlet var userTime: UILabel!
}

