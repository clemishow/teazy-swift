//
//  DetailsPartyViewController.swift
//  Teazy
//
//  Created by Dev on 08/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class DetailsPartyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let images = ["profile", "profile", "profile", "profile", "profile", "profile"]
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var segmentBar: UISegmentedControl!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var yoyoCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        self.view1.backgroundColor = .clear
        
        self.segmentBar.tintColor = .white
        
        self.imageProfile.layer.cornerRadius = (self.imageProfile.frame.width / 2)
        self.imageProfile.layer.masksToBounds = true
        
        self.yoyoCollection.delegate = self
        self.yoyoCollection.dataSource = self
        self.yoyoCollection.backgroundColor = UIColor(red: 47/255, green: 63/255, blue: 83/255, alpha: 1)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCell", for: indexPath) as! FriendsCollectionViewCell
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.image.layer.cornerRadius = (cell.image.frame.width / 2)
        cell.image.layer.masksToBounds = true
        
        return cell
    }

    

    @IBAction func actionChange(_ sender: Any) {
        if segmentBar.selectedSegmentIndex == 0 {
            view1.isHidden = true
        }
        
        if segmentBar.selectedSegmentIndex == 1 {
            view1.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
