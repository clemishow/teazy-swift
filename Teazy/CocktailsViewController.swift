//
//  CocktailsViewController.swift
//  Teazy
//
//  Created by Dev on 04/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CocktailsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var images = ["tap1", "tap1", "tap1", "tap1", "tap1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        self.collectionView.backgroundColor = .clear
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
//        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail")
//        URLSession.shared.dataTask(with: url!, completionHandler: {
//            (data, response, error) in
//            if(error != nil){
//                print("error")
//            }else{
//                do{
//                    let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
//                    
//                    print(json)
//                    
//                }catch let error as NSError{
//                    print(error)
//                }
//            }
//        }).resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! CocktailCollectionViewCell
        cell.image.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected row is" , indexPath.row)
    }
}

