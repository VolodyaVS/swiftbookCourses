//
//  Course.swift
//  swiftbookCourses
//
//  Created by Vladimir Stepanchikov on 25.09.2020.
//

import Foundation

struct Course: Decodable {
    
    // MARK: - Public Properties
    let name: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
    
    // MARK: - Initializations
    init(courseData: [String: Any]) {
            name = courseData["name"] as? String
            imageUrl = courseData["imageUrl"] as? String
            numberOfLessons = courseData["number_of_lessons"] as? Int
            numberOfTests = courseData["number_of_tests"] as? Int
    }
    
    // MARK: - Static Methods
    static func getCourses(from value: Any) -> [Course]? {
        guard let coursesData = value as? [[String: Any]] else { return [] }
        return coursesData.compactMap { Course.init(courseData: $0) }
    }
}
