//
//  ViewController.swift
//  day12
//
//  Created by Macbook on 05/03/1443 AH.
//

import UIKit

struct Show {
    let name : String
    let logo : String
}
var rows = [
    Show(
        name: "mic",
        logo: "mic"),
    Show(
        
        name: "mic.fill",
        logo: "mic.fill"),
    Show(
        name:"message",
        logo: "message"),
    Show(
        name:"message.fill",
        logo:"message.fill"),
    Show (
        name:"sun.min",
        logo:"sun.min"),
    Show(
        name:"sun.min.fill",
        logo:"sun.min.fill"),
    Show(
        name:"sunset",
        logo: "sunset"),
    Show(
        name:"sunset.fill",
        logo: "sunset.fill"),
    Show(
        name:"pencil",
        logo:"pencil"),
    Show(
        name:"pencil. circle",
        logo:"pencil. circle"),
    Show(
        name:"highlighter",
        logo: "highlighter"),
    Show(
        name:"pencil.and.outline",
        logo: "pencil.and.outline"),
    Show(
        name:"personalhotspot",
        logo:"personalhotspot"
    )
]

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as!CustumCell
        
        let ss =  rows[indexPath.row]
        
        cell.label.text = ss.name
        cell.logo.image = UIImage(systemName: ss.logo)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let em = rows[indexPath.row]
        let alert1 = UIAlertController(
            title: ("Hello "),
            message: "How are you",
            preferredStyle: .alert)
        
        alert1.addAction(
            UIAlertAction(
                title: "pay 500",
                style: .default,
                handler: { action in
                    print("hahahah")
                }
            )
        )
        alert1.addAction(
            UIAlertAction(
                title: "cancel",
                style: .cancel,
                handler: { action in
                    print("thanks")
                }
            )
        )
        present(alert1, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView,
                   trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let deleteAction = UIContextualAction(
            style: .normal,
            title:  "Delete",
            handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
                rows.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
                success(true)
                
            })
        deleteAction.backgroundColor = .red
        
        
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource=self
        tableview.delegate=self
    }
    
}

