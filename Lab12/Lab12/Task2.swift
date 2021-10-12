//
//  Task2.swift
//  Lab12
//
//  Created by Me .. on 06/03/1443 AH.
//

import UIKit
struct Email {
  let title: String
  let subtitle : String
  let massege : String
  let image : String
  let isFavorite : Bool
}
var emailList = [
    Email (title: "Rahaf",subtitle: "Exam",massege: "the pages of exam",image: "B1",isFavorite: true),
    Email (title: "job",subtitle: "job application",massege: "this location for meeting",image: "B2",isFavorite: true),
    Email (title: "Malak",subtitle: "Hello",massege: "call me necessary",image: "B3",isFavorite: true),
    Email (title: "Dr.Mohammed",subtitle: "urgent",massege: "complete your file",image: "B4",isFavorite: true),
    Email (title: "Nora",subtitle: "meet me",massege: "hello,can i see you tomorrow in coffee shope",image: "B5",isFavorite: true),
    Email (title: "Ms.Ahlam",subtitle: "attention",massege: "time of lecture tomorrow",image: "B6",isFavorite: true)]
    

class conversation:UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var tablecon: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emailList.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    let user = emailList[indexPath.row]
      let cellemail = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! cellemail
      
    cellemail.userLogo.image = UIImage(named: user.image)
      cellemail.userName.text = user.title
      cellemail.userComent.text = user.subtitle
    cellemail.userSub.text = user.massege
    return cellemail
   
      
      
  }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tablecon.delegate = self
    tablecon.dataSource = self
      
      
  }

}
    class cellemail: UITableViewCell {
        
        @IBOutlet weak var userLogo: UIImageView!
        
        @IBOutlet weak var userName: UILabel!
        
        @IBOutlet weak var userComent: UILabel!
        
        @IBOutlet weak var userSub: UILabel!
        
    }
        
    



