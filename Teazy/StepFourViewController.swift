//
//  StepFourViewController.swift
//  Teazy
//
//  Created by Dev on 04/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class StepFourViewController: UIViewController {
    
    @IBOutlet weak var UIButtonFinish: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 47/255, green: 63/255, blue: 83/255, alpha: 1)
        
        // Style button finish
        self.UIButtonFinish.backgroundColor = UIColor(red: 60/255, green: 90/255, blue: 150/255, alpha: 1)
        self.UIButtonFinish.setTitle("Se connecter avec Facebook", for: .normal)
        self.UIButtonFinish.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
        self.UIButtonFinish.layer.cornerRadius = 3;
        self.UIButtonFinish.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        
    }
    
    func pressed(_ sender: UIButton) {
        print("clic")
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarController")
        self.present(homeViewController, animated: true, completion: nil)
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
