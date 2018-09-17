//
//  CategoryCell.swift
//  practableView
//
//  Created by iOS developer on 9/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews( category : Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
