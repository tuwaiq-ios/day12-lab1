//
//  ETV.swift
//  day12-2
//
//  Created by sally asiri on 05/03/1443 AH.
//


import UIKit

class ETV: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return email.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let email1 = email[indexPath.row]
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! cell
        
        cell1.labe1cell.text = email1.nameSender
        cell1.label2cell.text = email1.message
        cell1.imagcell.image = UIImage(named: email1.image2)
        cell1.imagcell.layer.masksToBounds = true
        cell1.imagcell.layer.cornerRadius = imag.bounds.width/2
        
        if email1.isfavor {
            cell1.imagcell.image = UIImage(named: "ثلاث")
        }
        else {
            cell1.imagcell.image = UIImage(named: "خمس")
            
        }
            
           return cell1
        
        
    }
        
    
    

   
  
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var imag: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        label2.text = "اثنين"
        label1.text = "Inbox"
        imag.image = UIImage(named: "واحد")
        
        imag.layer.masksToBounds = true
        imag.layer.cornerRadius = imag.bounds.width/2
        
        
        table.delegate = self
        table.dataSource = self
    }
   



}



