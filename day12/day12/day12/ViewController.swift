//
//  ViewController.swift
//  day12
//
//  Created by sally asiri on 05/03/1443 AH.
//


import UIKit


class ViewController: UIViewController {
   
    
    @IBOutlet weak var table: UITableView!
    
    
    var name = [
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
        return name.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        cell.imageView?.image = UIImage(systemName: name[indexPath.row])
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if  editingStyle == .delete {
            tableView.beginUpdates()
            name.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
            
    }
}
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let a =   [indexPath.row]
        //  message
        
        let alertController = UIAlertController(title: " \(a)", message:
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
