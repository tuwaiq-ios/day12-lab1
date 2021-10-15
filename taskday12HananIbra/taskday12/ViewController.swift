//
//  ViewController.swift
//  taskday12
//
//  Created by HANAN on 05/03/1443 AH.
//

    import UIKit

    class ViewController: UIViewController {
        
        @IBOutlet var table:UITableView!
        
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


        override func viewDidLoad() {
            super.viewDidLoad()
            table.delegate = self
            table.dataSource = self
        }


    }

    extension ViewController: UITableViewDelegate, UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
            
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return rows.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = rows[indexPath.row]
            cell.imageView?.image = UIImage (systemName: rows[indexPath.row])
            return cell
            
        }
        func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return.delete
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                tableView.beginUpdates()
                rows.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
                
            }
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let e = rows [indexPath.row]
            
            
            //massage
            
            let alertController = UIAlertController (title: "\(e)", message: "hala", preferredStyle: UIAlertController.Style.alert)
            
            //ok , cancel
            
            alertController.addAction(UIAlertAction(
                title : "cancel",
                style: UIAlertAction.Style.cancel,
                handler: { action in
                    print ("cancel")
                }
            ))
            
          //present
            
            present( alertController, animated: true, completion: nil )
        }
        
    }



