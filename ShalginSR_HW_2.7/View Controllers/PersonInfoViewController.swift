//
//  PersonInfoViewController.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = "Phone: \(personInfo.phoneNumber)"
        emailLabel.text = "E-mail: \(personInfo.email)"
        navigationItem.title = personInfo.fullName
    }
}
