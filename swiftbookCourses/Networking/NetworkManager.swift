//
//  NetworkManager.swift
//  Networking
//
//  Created by Vladimir Stepanchikov on 25.09.2020.
//

import Foundation
import Alamofire

extension CoursesViewController {
    
    func fetchCourses() {
        let stringURL = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
        AF.request(stringURL)
            .validate()
            .responseJSON { (dataResponse) in
                switch dataResponse.result {
                case .success(let value):
                    self.courses = Course.getCourses(from: value) ?? []
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}
