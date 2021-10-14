//
//  ViewController.swift
//  icon
//
//  Created by Kholod Sultan on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)as! cell
        
        cell.textLabel?.text = rows[indexPath.row]
        cell.imageView?.image = UIImage(systemName: rows[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
        self.rows.remove(at: indexPath.row);tableView.reloadData()
            completionHandler(true)
        }

    
        let swipeActionConfig = UISwipeActionsConfiguration(actions: [ delete])
        swipeActionConfig.performsFirstActionWithFullSwipe = false
        return swipeActionConfig
    }

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let name = rows [indexPath.row]
    
    let AlertController = UIAlertController (
        
        title: "\(name)", message:"", preferredStyle: UIAlertController.Style.alert)
    
    AlertController.addAction(
        UIAlertAction(
            title: "ok", style: UIAlertAction.Style.default, handler: { ACTION in
                print ("Hi")
                
            })
    )
    present(AlertController, animated: true, completion: nil)
    
}

    
    
    @IBOutlet weak var listcell: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        listcell.delegate =  self
        listcell.dataSource =  self
        
        // Do any additional setup after loading the view.
        
    }


}


