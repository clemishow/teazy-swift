//
//  CocktailsViewController.swift
//  Teazy
//
//  Created by Dev on 04/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CocktailsViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var images = [UIImage(named: "illu-beer"), UIImage(named: "illu-champagne"), UIImage(named: "illu-wine")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        self.view.backgroundColor = UIColor(red: 55/255, green: 71/255, blue: 92/255, alpha: 1)
        
        
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail")
        URLSession.shared.dataTask(with: url!, completionHandler: {
            (data, response, error) in
            if(error != nil){
                print("error")
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
                    
                    print(json)
                    
                }catch let error as NSError{
                    print(error)
                }
            }
        }).resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Intializing a collectionView and adding it to the VC's current view
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(CocktailCollectionViewCell.self, forCellWithReuseIdentifier: "cocktailCell")
        collectionView.backgroundColor = UIColor.green
        view.addSubview(collectionView)
    }
}

extension CocktailsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Specifying the number of sections in the collectionView
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Specifying the number of calls in the given section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cocktailCell", for: indexPath) as! CocktailCollectionViewCell
        cell.awakeFromNib()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cocktailCell = cell as! CocktailCollectionViewCell
        
        foodCell.foodImageView.image = images[indexPath.row]
    }
}
