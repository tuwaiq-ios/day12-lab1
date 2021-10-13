//
//  ViewController.swift
//  Todoapp
//
//  Created by sally asiri on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource {
      }

    
    
    private let table: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do List"
        view.addSubview(table)
        table.dataSource = self
        navigationItem.rightBarButtonItem = UIBarButtonItem =
        UIBarButtonItem(barButtonSystemItem: .add,
                        target: self, action: #selector(didTapAdd))
    }
@objc private func didTapAdd() {
    let alert = UIAlertController(title: "New Item", message: : "Enter new to do list item", preferredStyle: .alert)
    alert.addTextField { field in
        field.placeholder = "Enter item..."
    }
    alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
    alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (_) in
        if let field = alert.textField?.first {
            if let text = field.text, !text.isEmpty {
                print(text)
            }
        }
        
    }))
    present(alert, animated: true)
}
override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    table.frame = view.bounds
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    return cell




