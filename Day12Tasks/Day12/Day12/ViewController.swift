//
//  ViewController.swift
//  Day12
//
//  Created by MacBook on 05/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var table: UITableView!
    
    var models = [
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
    "personalhotspot"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        cell.imageView?.image = UIImage(systemName: models[indexPath.row])
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if  editingStyle == .delete {
            tableView.beginUpdates()
            models.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
            
    }
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let e = models[indexPath.row]
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
     

}
