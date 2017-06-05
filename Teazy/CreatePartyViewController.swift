//
//  CreatePartyViewController.swift
//  Teazy
//
//  Created by Dev on 05/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CreatePartyViewController: UIViewController {

    @IBOutlet weak var UIBarButtonCancel: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UIBarButtonCancel.action = #selector(cancel(_:))
        self.UIBarButtonCancel.target = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
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
