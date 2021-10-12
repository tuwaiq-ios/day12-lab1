//
//  EmailT2.swift
//  day12
//
//  Created by ibrahim asiri on 05/03/1443 AH.
//

import UIKit

class EmailT2: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let emalInfo = emailList[indexPath.row]
        let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath) as! EmailCell
        
        emailCell.imgLbl.image = UIImage(named: emalInfo.image)
        emailCell.titelLbl.text = emalInfo.title
        emailCell.sunTitLbl.text = emalInfo.subTit
        emailCell.letterLbl.text = emalInfo.letter
        emailCell.isOpenLbl.text = emalInfo.isOpen
        emailCell.titelLbl.font = UIFont.boldSystemFont(ofSize: 20.0)
        emailCell.sunTitLbl.font = UIFont.boldSystemFont(ofSize: 15)
        emailCell.letterLbl.font = UIFont.boldSystemFont(ofSize: 10)
        emailCell.imgLbl.layer.masksToBounds = true
        emailCell.imgLbl.layer.cornerRadius = 80 / 2
        
        return emailCell
        
    }
    
    
    
    @IBOutlet weak var imgCir: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgCir.layer.masksToBounds = true
        imgCir.layer.cornerRadius = imgCir.bounds.width / 2
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
}

class EmailCell: UITableViewCell{
    
    @IBOutlet weak var imgLbl: UIImageView!
    @IBOutlet weak var titelLbl: UILabel!
    @IBOutlet weak var sunTitLbl: UILabel!
    @IBOutlet weak var letterLbl: UILabel!
    @IBOutlet weak var isOpenLbl: UILabel!
    
}
