//
//  PartyViewController.swift
//  Teazy
//
//  Created by Dev on 04/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class PartyViewController: UIViewController {

    @IBOutlet weak var containerPicture: UIView!
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        // Style profile picture
        self.containerPicture.backgroundColor = .clear
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.height / 2
        self.profilePicture.layer.masksToBounds = true
        self.profilePicture.clipsToBounds = true
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
