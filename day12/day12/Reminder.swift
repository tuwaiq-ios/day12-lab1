//
//  Reminder.swift
//  day12
//
//  Created by SARA SAUD on 3/5/1443 AH.
//

import UIKit
let list = ["Make Wiretframing","Meeting With Team","make smartphone app concept","pick up Loundry","Drink Milk"]

class VC3: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rCell = tableView.dequeueReusableCell(withIdentifier: "222", for: indexPath) as! CCell
        
        class ViewController: UIViewController {

            var randomNumber = arc4random_uniform(20)
            var randomColor = arc4random()

            //Color Background randomly
            func colorBackground() {

                // TODO: set a random color
                view.backgroundColor = UIColor.yellow

            }
        }
        
        rCell.label.text = list[indexPath.row]
        return rCell
    }
    
    
    
}
class CCell:UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
}
