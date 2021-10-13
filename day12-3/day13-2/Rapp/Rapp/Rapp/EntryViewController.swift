//
//  EntryViewController.swift
//  Rapp
//
//  Created by sally asiri on 07/03/1443 AH.
//

import UIKit

class EntryViewController: UIViewController {
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField)
    
    saveTask()
    return true
    
    @IBOutlet func saveTask() {
    

}
