//
//  CocktailsCollectionViewCell.swift
//  Teazy
//
//  Created by Dev on 07/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class CocktailCollectionViewCell: UICollectionViewCell {

    var cocktailImageView: UIImageView!
    
    override func awakeFromNib() {
        cocktailImageView = UIImageView(frame: contentView.frame)
        cocktailImageView.contentMode = .scaleAspectFill
        cocktailImageView.clipsToBounds = true
        contentView.addSubview(cocktailImageView)
    }
}
