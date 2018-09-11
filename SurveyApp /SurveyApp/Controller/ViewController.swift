//
//  ViewController.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var surveyTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        surveyTable.dataSource = self
        surveyTable.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataService.instance.getSurveys().count
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return DataService.instance.getSurveys()[section].question
//
//    }
//
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.green
    
        let label = UILabel()
        label.text = DataService.instance.getSurveys()[section].question
        label.frame = CGRect (x: 20, y: 5, width: 400, height: 35)
        view.addSubview(label)
        return view
        
  }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = DataService.instance.getSurveys()
        return data[section].answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SurveyCell") as? SurveyCell {
            let surveySectionModel = DataService.instance.getSurveys()[indexPath.section]
            cell.textLabel?.text = surveySectionModel.answers[indexPath.row]
//            cell.updateViews(survey: surveySectionModel)
            return cell
        }
            else {
                return SurveyCell()
            
        }
    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "SurveyCell") as? SurveyCell {
//            let surveySectionModel = DataService.instance.getSurveys()[indexPath.section]
//            cell.textLabel?.text = surveySectionModel.answers[indexPath.row]
//            cell.isSelected = true
//           
//    }
//
//}
}
