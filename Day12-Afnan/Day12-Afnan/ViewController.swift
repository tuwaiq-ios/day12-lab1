//
//  ViewController.swift
//  Day12-Afnan
//
//  Created by Fno Khalid on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   var rows = [
        "mic",
        "mic.fill",
        "message",
        "message.fill",
        "sun.min",
        "sun.min.fill",
        "sunset",
        "sunset.fill",
        "pencil",
        "pencil. circle",
        "highlighter",
        "pencil.and.outline",
        "personalhotspot",
    ]
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath) as! cell
        
        cell.name?.text = rows[indexPath.row]
        cell.nameimage.image = UIImage (systemName: rows[indexPath.row] )
        

        
        return cell
    }
    

    @IBOutlet weak var listcell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listcell.dataSource = self
        listcell.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView,
                    trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
     {
         let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
             self.rows.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .middle)
             
             success(true)
         })
         deleteAction.backgroundColor = .red
         return UISwipeActionsConfiguration(actions: [deleteAction])
     }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = rows[indexPath.row]
        
        let alertcontroller = UIAlertController(title: rows[indexPath.row]
                                                , message: "Hi"
                                                , preferredStyle: UIAlertController.Style.alert
        )
        
        alertcontroller.addAction(
            UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: { Action in print("...")
            })
            
        )
        
        self.present(alertcontroller, animated: true, completion: nil)
    }
}

