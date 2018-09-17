//
//  Category.swift
//  practableView
//
//  Created by iOS developer on 9/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title: String
    private (set) public var imageName : String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
