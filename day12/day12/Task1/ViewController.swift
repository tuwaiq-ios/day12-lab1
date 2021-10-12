//
//  ViewController.swift
//  day12
//
//  Created by ibrahim asiri on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowCell = tableView.dequeueReusableCell(withIdentifier: "showList", for: indexPath) as! CellRow
        
        rowCell.leableList.text = rows[indexPath.row]
        rowCell.labelImg.image = UIImage(systemName: rows[indexPath.row])
        
        return rowCell
        
    }
    // function for delete cell from tableView
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertMsg = UIAlertController(title: rows[indexPath.row], message: "I try", preferredStyle: .alert)
        
        alertMsg.addAction(UIAlertAction(title: "هل كل شي جيد",
                                         style: UIAlertAction.Style.default,
                                         handler: { ACTION in print("...")
        }))
        UIApplication.shared.keyWindow?.rootViewController?.present(alertMsg, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

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

class CellRow : UITableViewCell{
    
    @IBOutlet weak var leableList: UILabel!
    @IBOutlet weak var labelImg: UIImageView!
    
}
