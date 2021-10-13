//
//  ViewController.swift
//  Day12
//
//  Created by Tsnim Alqahtani on 05/03/1443 AH.
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
    "pencil. circle",
    "highlighter",
    "pencil.and.outline",
    "personalhotspot",
]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

@IBOutlet weak var namesTV: UITableView!


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            let row1 = rows[indexPath.row]
let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! tablecell
          
        cell.nameRow.text = row1
        cell.imageRow.image = UIImage(systemName:row1)
        return cell
    }
    
        //alert
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let Alertrow = rows[indexPath.row]
            
            let Alertcontroller = UIAlertController(
                title: "\(rows[indexPath.row])",
                message:"hello world",
                preferredStyle: UIAlertController.Style.alert)
            
            Alertcontroller.addAction(
                UIAlertAction(
                    title: "ok",
                    style: UIAlertAction.Style.default,
                    handler: { action in
                        print ("done")
                        
                    } )
            )
            
            present(Alertcontroller, animated: true, completion: nil)
        }
        
        
        
        
        //deletion
        
        func tableView(_ tableView: UITableView,
                        trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
         {
             let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
                 
                 rows.remove(at: indexPath.row)
                             tableView.deleteRows(at: [indexPath], with: .left)
                             success(true)

            } )
             deleteAction.backgroundColor = .red

             return UISwipeActionsConfiguration(actions: [deleteAction])
            

      
         }

        
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            namesTV.delegate = self
            namesTV.dataSource = self
            // Do any additional setup after loading the view.
        }
}
    class tablecell: UITableViewCell{
    
        @IBOutlet weak var nameRow: UILabel!
        
        @IBOutlet weak var imageRow: UIImageView!
    }



