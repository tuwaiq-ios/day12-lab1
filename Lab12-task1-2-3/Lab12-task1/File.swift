//
//  File.swift
//  Lab12-task1
//
//  Created by Abdulaziz on 05/03/1443 AH.
//

import UIKit

class VC1: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var iconlists: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconss.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let icon = iconss[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellss", for: indexPath)
        as! cells
        
        cell.iconName.text = icon.name
        cell.iconPic.image = UIImage(systemName: icon.Imagess)
        
    return cell
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        let ico = iconss[indexPath.row]
        
        let AlertController = UIAlertController(
        
            title: (ico.name),
            message: "",
            preferredStyle:UIAlertController.Style.alert
        
        )
        
        AlertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {action in
           
        }))
        
        
        AlertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{ action in
            
        }))
        present(AlertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView,
                      trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
       {
           let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
             iconss.remove(at: indexPath.row)
               tableView.deleteRows(at: [indexPath], with: .left)
               success(true)
           })
           deleteAction.backgroundColor = .red
           
        return UISwipeActionsConfiguration(actions: [deleteAction])
       }
 


    
    override func viewDidLoad() {
        super.viewDidLoad()
        iconlists.delegate = self
        iconlists.dataSource = self
    }
    

}

