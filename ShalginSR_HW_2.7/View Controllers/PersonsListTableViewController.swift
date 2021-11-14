//
//  PersonListWithoutSectionTableViewController.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    var persons: [Person] = []

    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullname", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
            personInfoVC.personInfo = persons[indexPath.row]
        }
    }
}
