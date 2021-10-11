//
//  ViewController.swift
//  day12
//
//  Created by Sara M on 05/03/1443 AH.
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

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var namesTV: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let row = rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "namesCell",for: indexPath)
        as! tablecell
       
        cell.namesRows.text = row
        cell.imageRows.image = UIImage(systemName:row)
   
    return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = rows[indexPath.row]
        
        let Allertcontroller = UIAlertController (title: "\(rows[indexPath.row])",
            message: nil,
            preferredStyle: UIAlertController.Style.alert)
        Allertcontroller.addAction(
            UIAlertAction(
                title: "ok",
                style: UIAlertAction.Style.default,
                handler: { action in
                    
                    print ("good")
                } )
            )
        present(Allertcontroller,animated:true ,completion: nil)

            }
    
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
    
            
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesTV.delegate = self
        namesTV.dataSource = self
    }
}

    
    class tablecell :UITableViewCell{
        
        
    
        @IBOutlet weak var namesRows: UILabel!
    
        @IBOutlet weak var imageRows: UIImageView!
        
    }


