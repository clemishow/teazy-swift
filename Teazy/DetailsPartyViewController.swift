//
//  DetailsPartyViewController.swift
//  Teazy
//
//  Created by Dev on 08/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class DetailsPartyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let images = ["profile", "profile-auree", "profile-antoine", "profile-noemie", "profile-justin", "profile-mathilde"]
    
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var btnLessRow1: UIButton!
    @IBOutlet weak var btnPlusRow1: UIButton!
    @IBOutlet weak var btnPlusRow2: UIButton!
    @IBOutlet weak var btnLessRow2: UIButton!
    @IBOutlet weak var segmentBar: UISegmentedControl!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var yoyoCollection: UICollectionView!
    
    @IBOutlet weak var buttonAddNewStuff: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view2.isHidden = true

        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        self.view1.backgroundColor = .clear
        self.view2.backgroundColor = .clear
        
        self.segmentBar.tintColor = .white
        
        self.imageProfile.layer.cornerRadius = (self.imageProfile.frame.width / 2)
        self.imageProfile.layer.masksToBounds = true
        
        self.yoyoCollection.delegate = self
        self.yoyoCollection.dataSource = self
        self.yoyoCollection.backgroundColor = UIColor(red: 47/255, green: 63/255, blue: 83/255, alpha: 1)
        
        self.buttonAddNewStuff.layer.borderColor = UIColor.white.cgColor
        self.buttonAddNewStuff.layer.borderWidth = 1
        self.buttonAddNewStuff.layer.cornerRadius = (self.buttonAddNewStuff.frame.width / 2)
        self.buttonAddNewStuff.layer.masksToBounds = true
        self.buttonAddNewStuff.tintColor = .white
        
        self.btnLessRow1.layer.borderColor = UIColor.white.cgColor
        self.btnLessRow1.layer.borderWidth = 1
        self.btnLessRow1.layer.cornerRadius = (self.buttonAddNewStuff.frame.width / 2)
        self.btnLessRow1.layer.masksToBounds = true
        self.btnLessRow1.tintColor = .white
        
        self.btnPlusRow1.layer.borderColor = UIColor.white.cgColor
        self.btnPlusRow1.layer.borderWidth = 1
        self.btnPlusRow1.layer.cornerRadius = (self.buttonAddNewStuff.frame.width / 2)
        self.btnPlusRow1.layer.masksToBounds = true
        self.btnPlusRow1.tintColor = .white
        
        self.btnPlusRow2.layer.borderColor = UIColor.white.cgColor
        self.btnPlusRow2.layer.borderWidth = 1
        self.btnPlusRow2.layer.cornerRadius = (self.buttonAddNewStuff.frame.width / 2)
        self.btnPlusRow2.layer.masksToBounds = true
        self.btnPlusRow2.tintColor = .white
        
        self.btnLessRow2.layer.borderColor = UIColor.white.cgColor
        self.btnLessRow2.layer.borderWidth = 1
        self.btnLessRow2.layer.cornerRadius = (self.buttonAddNewStuff.frame.width / 2)
        self.btnLessRow2.layer.masksToBounds = true
        self.btnLessRow2.tintColor = .white
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
            view1.isHidden = false
            view2.isHidden = true
        }
        
        if segmentBar.selectedSegmentIndex == 1 {
            view1.isHidden = true
            view2.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
