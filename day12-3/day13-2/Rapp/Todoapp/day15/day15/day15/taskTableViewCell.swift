//
//  taskTableViewCell.swift
//  day15
//
//  Created by sally asiri on 07/03/1443 AH.
//

import UIKit

class taskTableViewCell: UITableViewCell {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btn(_ sender: Any) {
    }
}
