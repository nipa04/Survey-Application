//
//  ViewController.swift
//  practableView
//
//  Created by iOS developer on 9/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategory()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductVC" , sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC{
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
    
    

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        if let productVC = segue.destination as? ProductVC {
//            let barBtn = UIBarButtonItem()
//            barBtn.title = ""
//            navigationItem.backBarButtonItem = barBtn
//            assert(sender as? Category != nil)
//            productVC.initProducts(category: sender as! Category)
//        }
//    }
}

