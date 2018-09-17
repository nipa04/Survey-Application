//
//  DataServices.swift
//  practableView
//
//  Created by iOS developer on 9/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS",imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL",imageName: "digital.png")
    ]
    
    private let shirts = [
    Product(imageName: "shirt01.png" , title:"Devolopers Logo Graphic Beanie", price: "$25"),
    Product(imageName: "shirt02.png", title:"Developers Logo white", price: "$20"),
    Product(imageName: "shirt03.png", title:"Developers Logo Black", price: "$28"),
    Product(imageName: "shirt04.png", title:"Developers Logo Blue", price: "$30"),
    Product(imageName: "shirt05.png", title:"Developers Logo Green", price: "$35")
    ]
    
    private let hoodies = [
    Product(imageName: "hoodie01.png", title:"Developers Graphic Hoodie Black", price: "$23"),
    Product(imageName: "hoodie02.png", title:"Developers Graphic Hoodie Green", price:"$28"),
    Product(imageName: "hoodie03.png", title:"Developers Graphic Hoodie Blue", price: "$20"),
    Product(imageName: "hoodie04.png", title:"Developers Graphic Hoodie Yellow", price: "$30")
    ]
    
    private let hats = [
    Product(imageName:"hat01.png", title:"Developers Graphic Hat Black", price: "$30"),
    Product(imageName: "hat02.png", title:"Developers Graphic Hat Green", price: "$30"),
    Product(imageName: "hat03.png", title:"Developers Graphic Hat Blue", price:"$30"),
    Product(imageName: "hat04.png", title:"Developers Graphic Hat Yellow", price:"$30")
    ]
    private let digitalGoods = [Product]()

    func getCategory() -> [Category] {
        return categories
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getHats() -> [Product]{
        return hats
    }
    func getDigital() -> [Product]{
        return digitalGoods
    }
    
    func getProducts(getCategorytitle title : String) -> [Product] {
        switch title {
        case "SHIRTS" :
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case  "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
}
