//
//  TabBarViewController.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 14.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personsListVC = viewControllers?.first as? PersonsListTableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let person = Person.getPerson()
        personsListVC.persons = person
        sectionVC.persons = person
    }
}
