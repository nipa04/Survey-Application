//
//  ProductVC.swift
//  practableView
//
//  Created by iOS developer on 9/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
   private(set) public var products = [Product]()
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(getCategorytitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product )
            return cell
        }
            return ProductCell()
    }
}
