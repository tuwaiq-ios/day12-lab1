//
//  ViewController.swift
//  dey 12
//
//  Created by dmdm on 11/10/2021.
//

import UIKit
let rows = [
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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var namesTV: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let row = rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "namescell", for: indexPath) as! tablecell
       
         cell.namesTable.text = row
         cell.imageTable.image = UIImage(systemName: row)
       
        return cell
    }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let row = rows[indexPath.row]
        
        let AlertController = UIAlertController(
            
            title: "\(rows[indexPath.row])",
            message: nil ,
            preferredStyle: .alert)
        
        AlertController.addAction(
            UIAlertAction(
                title:"ok",
                style: UIAlertAction.Style.default,
                handler: {
                    Action in
                    print("ok")
                } )
        )
        present(AlertController, animated:true, completion:nil)
        
    }
    func tableView(_ tableView: UITableView,
                    trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
     {
         let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
             success(true)
         })
         deleteAction.backgroundColor = .red

         return UISwipeActionsConfiguration(actions: [deleteAction])
    
}
    
     override func viewDidLoad() {
            super.viewDidLoad()
       
        namesTV.delegate = self
        namesTV.dataSource = self
    
}
}

    class tablecell :  UITableViewCell {

        @IBOutlet weak var imageTable: UIImageView!
        
        @IBOutlet weak var namesTable: UILabel!
}

