//
//  ViewController.swift
//  swiftbookCourses
//
//  Created by Vladimir Stepanchikov on 25.09.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCourses" {
            let courseVC = segue.destination as! CoursesViewController
            courseVC.fetchCourses()
        }
    }
    
    // MARK: - IB Actions
    @IBAction func fetchButton(_ sender: UIButton) {
    }
    
}

