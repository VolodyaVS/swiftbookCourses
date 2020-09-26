//
//  CoursesTableViewController.swift
//  swiftbookCourses
//
//  Created by Vladimir Stepanchikov on 25.09.2020.
//

import UIKit

class CoursesViewController: UITableViewController {
    
    // MARK: - Public properties
    var courses: [Course] = []
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        courses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CourseCell
        
        let course = courses[indexPath.row]
        cell.configure(with: course)
        
        return cell
    }
    
}
