//
//  viewController.swift
//  day12
//
//  Created by  HANAN ASIRI on 05/03/1443 AH.
//

import UIKit

class cv1 : UIViewController {
    
    @IBOutlet var Vimage: UIImageView!
    
    @IBOutlet var InboxLable: UILabel!
    
    
    @IBOutlet var numberInbox: UILabel!
    
    


override func viewDidLoad() {
    super.viewDidLoad()
    
    InboxLable.text = "Inbox"
    numberInbox.text = "23 unread"
    Vimage.image = UIImage(named: "photo-5")
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
