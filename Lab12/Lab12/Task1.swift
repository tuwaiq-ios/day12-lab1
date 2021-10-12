//
//  Task1.swift
//  Lab12
//
//  Created by Me .. on 06/03/1443 AH.
//

import UIKit

var rows = [
"mic",
"mic.fill",
"message.fill",
"sun.min",
"sun.min.fill",
"sunset",
"sunset.fill",
"pencil",
"pencil.circle",
"highlighter",
"pencil.and.outline",
"personalhotspot"
]

class List: UIViewController,UITableViewDelegate,UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return rows.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let name = rows [indexPath.row]
      
    let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath) as! cell
      
    cell.imageicon.image = UIImage(systemName: rows [indexPath.row]
    )
    cell.labelicon.text = name
    return cell
  }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action ,sourceView, completionHandler) in rows.remove(at: indexPath.row);tableView.reloadData()
            completionHandler(true)
      }
        
        
      let swipeActionConfig = UISwipeActionsConfiguration(actions: [ delete])
      swipeActionConfig.performsFirstActionWithFullSwipe = false
      return swipeActionConfig
    }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let name = rows [indexPath.row]
      
    let AlertController = UIAlertController (
        
        title: "\(name)",message: "",preferredStyle: UIAlertController.Style.alert)
      
    AlertController.addAction(
      UIAlertAction(
        title: "ok", style: UIAlertAction.Style.default, handler: {
            ACTION in
            print ("Hi")
        }
    ))
    present(AlertController, animated: true, completion: nil)
  }
  
    
    
    @IBOutlet weak var tableViewlcell: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
      
      tableViewlcell.dataSource = self
      tableViewlcell.delegate = self
   
  }
}




class cell : UITableViewCell {
    
    
    @IBOutlet weak var imageicon: UIImageView!
    
    
    @IBOutlet weak var labelicon: UILabel!
    
}



















