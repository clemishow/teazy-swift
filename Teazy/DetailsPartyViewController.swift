//
//  DetailsPartyViewController.swift
//  Teazy
//
//  Created by Dev on 08/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class DetailsPartyViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var segmentBar: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        
        
        self.segmentBar.tintColor = .white
    }

    @IBAction func actionChange(_ sender: Any) {
        if segmentBar.selectedSegmentIndex == 0 {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
