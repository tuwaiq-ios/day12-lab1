//
//  VC1.swift
//  day12 task2
//
//  Created by Ahmed Assiri on 06/03/1443 AH.
//

import UIKit



class VC1 : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inbox.count
        
        
    }
    @IBOutlet weak var tableView: UITableView!
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ce = inbox[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath)
        as! Cell
        let list = inbox[indexPath.row]
        
        
        
        cell.Ms.text = ce.Title
        cell.subtitle.text = ce .SupTitle
        cell.Msg.text = ce.Ms
        cell.logo.image = UIImage(named: ce.iconMail)
        cell.stsr.image = UIImage(named: ce.isFavorite)
        
        
        return cell
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}
