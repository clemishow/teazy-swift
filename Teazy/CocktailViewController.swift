//
//  CocktailViewController.swift
//  Teazy
//
//  Created by Dev on 08/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CocktailViewController: UIViewController {

    @IBOutlet weak var cocktailImage: UIImageView!
    var passedData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        print("Yeah bitch : \(passedData)")
        cocktailImage.image = UIImage(named: passedData)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
