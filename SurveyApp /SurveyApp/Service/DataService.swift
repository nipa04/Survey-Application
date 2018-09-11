//
//  DataService.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let dataSource: [SurveySectionModel] = [
        
 SurveySectionModel(question : "What is name of Canada's capital city?",
                    answers : ["Ottawa", "Calgary", "Toronto","Gatineau"], correctIndex : 0 ),
 SurveySectionModel(question : "What is India's capital city?", answers : ["Mumbai", "Pune", "Dhelli","Bangalore"], correctIndex : 2),
 SurveySectionModel(question : "What is the name of capital city of USA?", answers : ["Florida", "Chicago", "New York","Washington DC"], correctIndex : 3),
 SurveySectionModel(question : "What is the name of Bangladesh's capital city?", answers : ["Chittagong", "Dhaka", "Khulna","Sylet"], correctIndex : 1 )
 
    ]
    

    func getSurveys() -> [SurveySectionModel] {
        return dataSource
    }
}


