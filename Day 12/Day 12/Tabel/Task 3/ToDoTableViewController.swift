//
//  ToDoTableViewController.swift
//  Day 12
//
//  Created by Eth Os on 05/03/1443 AH.
//

import UIKit

class ToDoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var taskTV: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTV.delegate = self
        taskTV.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDo.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath) as! ToDoCell
        let data = toDo[indexPath.row]
        
        cell.taskLabel.text = data.task
        cell.taskLabel.textColor = .white
        cell.backgroundColor = data.color
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 75
    }
}
