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
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ce = inbox[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath)
        as! Cell
        let list = inbox[indexPath.row]
        
        
        
        cell.title.text = Ms.title
        cell.subtitle.text =
        
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
