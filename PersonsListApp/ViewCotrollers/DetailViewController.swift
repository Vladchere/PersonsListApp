//
//  DetailViewController.swift
//  PersonsListApp
//
//  Created by Vladislav on 10.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personDetail.firstName + " " + personDetail.lastName
        
        phoneLabel.text = "Phone: \(personDetail.phone)"
        emailLabel.text = "Phone: \(personDetail.email)"
    }
}
