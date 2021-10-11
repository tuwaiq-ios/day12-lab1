//
//  ViewController.swift
//  task,day12
//
//  Created by Dr. Fahad on 05/03/1443 AH.
//

import UIKit

class Task : UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell1", for: indexPath) as! Cell
        
        cell.labelCell.text = rows[indexPath.row]
        cell.imageCell.image = UIImage(systemName: rows[indexPath.row] )
     
        return cell
    }
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        tableview.delegate = self
        tableview.dataSource = self
        
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    
       var alert = UIAlertController(title: rows[indexPath.row] , message: "", preferredStyle:.alert)
        
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel, handler: {Action in print("cancel")}))
        
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView,
        trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
        {
            let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
                self.rows.remove(at: indexPath.row) // نحذف المكان البي نبيه من الداتا
                tableView.deleteRows(at: [indexPath], with: .left) // يسار او يمين الي ابي
                success(true)
            })
            deleteAction.backgroundColor = .red // اغير اللون
            return UISwipeActionsConfiguration(actions: [deleteAction])//اقدر اضيف زر ثاني
                }
            }
