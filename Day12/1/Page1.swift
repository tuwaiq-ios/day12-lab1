//
//  Page1.swift
//  Day12
//
//  Created by m-alqhtani on 05/03/1443 AH.
//

import Foundation
import UIKit

class Page1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! PageCell
        
        let name = rows [indexPath.row]
        cell.logoCell.image = UIImage(systemName: name)
        
        cell.nameCell.text = name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rrows = rows [indexPath.row]
        let AlertControll = UIAlertController(
            
            title: rrows,
            message: rrows,
            preferredStyle: UIAlertController.Style.alert)
        
        AlertControll.addAction(
            UIAlertAction(
                title: "Cancel",
                style: UIAlertAction.Style.default,
                handler: { Action in print("ggg")}
            )
        )
        present(AlertControll, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TV1.delegate = self
        TV1.dataSource = self
    }
    
    func tableView(_ tableView: UITableView,
                   trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            rows.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            success(true)
        })
        deleteAction.backgroundColor = .red
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    @IBOutlet weak var TV1: UITableView!
}
