//
//  ViewController.swift
//  day12
//
//  Created by  HANAN ASIRI on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "listcell", for: indexPath) as! cell
        
        cell.name?.text = rows[indexPath.row]
        cell.nameimage.image = UIImage (systemName: rows[indexPath.row])

        return cell
    }
    

    @IBOutlet var listcell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listcell.dataSource = self
        listcell.delegate = self
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView,
                    trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
     {
         let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
             self.rows.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .bottom)
             
             success(true)
         })
         deleteAction.backgroundColor = .red
         return UISwipeActionsConfiguration(actions: [deleteAction])
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = rows[indexPath.row]
        let alertcontroller = UIAlertController(title: "Alert !!😆"
                            , message: "welcome \(cell) "
                            , preferredStyle: UIAlertController.Style.alert
        )
        alertcontroller.addAction(
          UIAlertAction(title: "cancle", style: UIAlertAction.Style.default, handler: { Action in print("hahahah")
           
          })
        )
        self.present(alertcontroller, animated: true, completion: nil)
    }

    }
    
