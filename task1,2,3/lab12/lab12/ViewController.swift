//
//  ViewController.swift
//  lab12
//
//  Created by PC on 05/03/1443 AH.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellview", for: indexPath) as! cellview
      
      cell.labelcell.text = rows[indexPath.row]
      cell.imagecell.image = UIImage(systemName: rows[indexPath.row])
      return cell
        
  }
    func tableView(_ tableView: UITableView,
                       trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
        {
            let deleteAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
                self.rows.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
                success(true)
            })
            deleteAction.backgroundColor = .green
            return UISwipeActionsConfiguration(actions: [deleteAction])
        }
        
        
          
    
      
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
              
              let e = rows[indexPath.row]
              //  message
              
              let alertController = UIAlertController(title: " \(e)", message:
                                                          " ", preferredStyle: UIAlertController.Style.alert)
              // ok , cancel
              alertController.addAction(UIAlertAction(
              title: "OK ",
              style: UIAlertAction.Style.default,
              handler: { Action in
                  print ("OK")
                  
                  
              }
              
              ))
              
              alertController.addAction(UIAlertAction(
              title: "cancel ",
              style: UIAlertAction.Style.cancel,
              handler: { Action in
                  print ("cancel")
                  
                  
              }
              
              ))
              //present

              present( alertController, animated: true, completion: nil)
          }
           

    @IBOutlet weak var tabelview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.delegate = self
        tabelview.dataSource = self
    }


}


