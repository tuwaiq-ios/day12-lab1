//
//  ViewController.swift
//  day12
//
//  Created by SARA SAUD on 3/5/1443 AH.
//

import UIKit

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
    "pencil.circle",
    "highlighter",
    "pencil.and.outline",
    "personalhotspot",
]
//celforart

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! tableViewB
        cell.iconLabel.text = row
        cell.iconImage.image = UIImage(systemName:row)
        return cell
        
    }
    //alert
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let rowss = rows[indexPath.row]
        let alertControler = UIAlertController(title: "hi",
                message: "\(rowss)",
                preferredStyle: .alert)
        
        alertControler.addAction (
            UIAlertAction(
                title: "OK ",
                style: .default,
                handler: { action in
                    print ("done")
                    
                })
        )
        alertControler.addAction (
            UIAlertAction(
                title: "Cancel ",
                style: .default,
                handler: { action in
                    print ("cancil")
                    
                })
        )
        
        present(alertControler,animated: true, completion: nil)
    }
    //Delete Swip
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deletAction = UIContextualAction(style: .destructive, title: "DELETE",handler: {
            (ac:UIContextualAction,view:UIView,success:(Bool)->Void)in
            rows.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            success(true)
        } )
//deleteAction.backgroundColor = .systemPink
        return
        UISwipeActionsConfiguration(actions: [deletAction])
            //
        }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}
// Do any additional setup after loading the view.

class tableViewB :UITableViewCell{
    
    @IBOutlet weak var iconLabel: UILabel!
    
    @IBOutlet weak var iconImage: UIImageView!
}


