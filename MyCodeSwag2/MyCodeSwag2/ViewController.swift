//
//  ViewController.swift
//  MyCodeSwag2
//
//  Created by iOS developer on 9/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }

}

extension ViewController {
    private func setupUI() {
        // setup data source and delegate
        self.tableView.dataSource = self
        self.tableView.delegate   = self
        
        // setup cell
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
