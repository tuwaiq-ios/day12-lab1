//
//  ViewController.swift
//  day12
//
//  Created by Ahmed Assiri on 05/03/1443 AH.
//

import UIKit

var elements = ["mic",
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
                "personalhotspot",]
//

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableview: UITableView!
    //
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let elemnt = elements[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "B2", for: indexPath)
        as!CustomCell
        
        cell.namelabel.text = elemnt
        cell.mic.image = UIImage(systemName: elemnt)
        
        return cell
    }
//
        override func viewDidLoad() {
            super.viewDidLoad()
       
            tableview.dataSource = self
            tableview.delegate = self
        
    }
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    //
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        let delete = UIContextualAction(style: .destructive, title: "Delete"){
             (action,sourceView,completionHandler) in
            elements.remove(at: indexPath.row);tableView.reloadData()
            completionHandler(true)
        }
        let swipeActionConfig = UISwipeActionsConfiguration(actions: [ delete])
        swipeActionConfig.performsFirstActionWithFullSwipe = false
        return swipeActionConfig
    }
   //
    
    
        
        
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let A3 = elements[indexPath.row]
        
        let AlertController = UIAlertController(title: ("A3.name"), message: "", preferredStyle: UIAlertController.Style.alert)
        
        AlertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {action in }))
        AlertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in }))
        present(AlertController, animated: true, completion: nil)
    }
   
    }
    
    
    
    



