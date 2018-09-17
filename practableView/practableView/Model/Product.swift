//
//  Product.swift
//  practableView
//
//  Created by iOS developer on 9/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation
struct Product {
    private (set) public var imageName : String
    private (set) public var title : String
    private (set) public var price : String
    
    init(imageName : String, title: String, price : String){
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
