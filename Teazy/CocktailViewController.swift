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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)

        // Do any additional setup after loading the view.
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
