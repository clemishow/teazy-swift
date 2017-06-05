//
//  HomeViewController.swift
//  Teazy
//
//  Created by Dev on 04/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var UIButtonCreateParty: UIButton!
    
    @IBOutlet weak var UIImageProfilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        
        // Style button create party
        self.UIButtonCreateParty.layoutIfNeeded()
        self.UIButtonCreateParty.layer.cornerRadius = 100
        self.UIButtonCreateParty.layer.masksToBounds = true
        self.UIButtonCreateParty.backgroundColor = UIColor(red: 244/255, green: 179/255, blue: 80/255, alpha: 1)
        self.UIButtonCreateParty.setTitleColor(UIColor.white, for: .normal)
        self.UIButtonCreateParty.setTitle("+", for: .normal)
        self.UIButtonCreateParty.titleLabel!.font = UIFont(name: "ProximaNova-Regular", size: 50)
        
        // Style profile picture
//        self.UIImageProfilePicture.layer.cornerRadius = self.UIImageProfilePicture.frame.height / 2.0
//        self.UIImageProfilePicture.layer.masksToBounds = true
//        self.UIImageProfilePicture.clipsToBounds = true
//        self.UIImageProfilePicture.layer.borderWidth = 2
//        self.UIImageProfilePicture.layer.borderColor = UIColor.white.cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
