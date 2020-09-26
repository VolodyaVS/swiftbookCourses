//
//  NetworkManager.swift
//  Networking
//
//  Created by Vladimir Stepanchikov on 25.09.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Foundation

extension CoursesViewController {
    func fetchCourses() {
        let stringURL = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
        guard let url = URL(string: stringURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let data = data else { return }
            let jsonDecoder = JSONDecoder()
            jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                self.courses = try jsonDecoder.decode([Course].self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
