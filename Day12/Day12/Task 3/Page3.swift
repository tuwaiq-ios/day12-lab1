//
//  Page3.swift
//  Day12
//
//  Created by Fawaz on 05/03/1443 AH.
//

import Foundation
import UIKit

class Page3: UIViewController, UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data3.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "3", for: indexPath) as! PageCell3
    
    let name = data3[indexPath.row]
    
    cell.labelCell.text = name
    
    if indexPath.row % 2 == 0{
      cell.labelCell.backgroundColor = UIColor.blue
    }
    else{
      cell.labelCell.backgroundColor = UIColor.lightGray
    }
    
    return cell
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    TV3.delegate = self
    TV3.dataSource = self
  }
  
  @IBOutlet weak var TV3: UITableView!
  
}
//-----------------------------------------------------------------
class PageCell3: UITableViewCell{
  
  @IBOutlet weak var labelCell: UILabel!
  
}
