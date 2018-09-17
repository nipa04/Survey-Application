//
//  ProductViewCell.swift
//  practableView
//
//  Created by iOS developer on 9/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product : Product){
        productImage.image = UIImage( named : product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
