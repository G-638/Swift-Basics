//
//  CollectionViewController.swift
//  DemoProject
//
//  Created by Calibraint on 25/04/22.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
 {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCellView
        cell.myLbl.text = itemArr[indexPath.item]
                cell.myLbl.layer.borderColor = UIColor.blue.cgColor
                cell.myLbl.textAlignment = .center
                cell.myLbl.layer.cornerRadius = 10
                cell.myLbl.layer.borderWidth = 2
        return cell
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        for i in 1...60{
            itemArr.append(i.description)
         }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
