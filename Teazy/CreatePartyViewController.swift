//
//  CreatePartyViewController.swift
//  Teazy
//
//  Created by Dev on 05/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CreatePartyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var UIBarButtonCancel: UIBarButtonItem!
    @IBOutlet weak var inputAdress: UITextField!
    @IBOutlet weak var inputDate: UITextField!
    @IBOutlet weak var inputHour: UITextField!
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var friendsCollection: UICollectionView!
    
    let images = ["profile", "profile", "profile", "profile", "profile", "profile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UIBarButtonCancel.action = #selector(cancel(_:))
        self.UIBarButtonCancel.target = self
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)

        // Style inputAdress
        self.inputAdress.layer.cornerRadius = 0
        self.inputAdress.layer.borderColor = UIColor.white.cgColor
        self.inputAdress.layer.borderWidth = 1
        self.inputAdress.backgroundColor = .clear
        self.inputAdress.textColor = .white
        
        self.inputDate.layer.cornerRadius = 0
        self.inputDate.layer.borderColor = UIColor.white.cgColor
        self.inputDate.layer.borderWidth = 1
        self.inputDate.backgroundColor = .clear
        self.inputDate.textColor = .white
        
        self.inputHour.layer.cornerRadius = 0
        self.inputHour.layer.borderColor = UIColor.white.cgColor
        self.inputHour.layer.borderWidth = 1
        self.inputHour.backgroundColor = .clear
        self.inputHour.textColor = .white
        
        self.inputName.layer.cornerRadius = 0
        self.inputName.layer.borderColor = UIColor.white.cgColor
        self.inputName.layer.borderWidth = 1
        self.inputName.backgroundColor = .clear
        self.inputName.textColor = .white
        
        // Friends collection 
        friendsCollection.delegate = self
        friendsCollection.dataSource = self
        friendsCollection.backgroundColor = UIColor(red: 47/255, green: 63/255, blue: 83/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! FriendsCollectionViewCell
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.image.layer.cornerRadius = (cell.image.frame.width / 2)
        cell.image.layer.masksToBounds = true

        return cell
    }
}
