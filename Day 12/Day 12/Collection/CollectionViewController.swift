//
//  ViewController.swift
//  Day 12
//
//  Created by Eth Os on 05/03/1443 AH.
//

import UIKit

class CollectionViewController:UICollectionViewController{
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rows.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        
        let row = rows[indexPath.row]
        cell.imageView.image = UIImage(systemName: row.image)
        cell.name.text = row.name
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let row = rows[indexPath.row]
        let alert = UIAlertController(title: "Alert ! ", message: "\(row.name)", preferredStyle: .alert )
        alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { _ in
            return
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: UIAlertAction.Style.default, handler: { _ in
                    //Delete Action
            rows.remove(at: indexPath.row)
                               self.collectionView.performBatchUpdates({
                                  self.collectionView.deleteItems(at: [indexPath])})
                }))
        
        self.present(alert, animated: true, completion: nil)
        return
    }
}

