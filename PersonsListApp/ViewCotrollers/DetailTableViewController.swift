//
//  DetailTableViewController.swift
//  PersonsListApp
//
//  Created by Vladislav on 10.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var persons: [Person] {
        getPersonsFromMain()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].firstName + " " + persons[section].lastName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath)
		cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = String(persons[indexPath.section].phone)
        case 1:
            cell.textLabel?.text = persons[indexPath.section].email
        default:
            break
        }

        return cell
    }
    
    // MARK: - Private methods
    private func getPersonsFromMain() -> [Person] {
        let mainTableVC = tabBarController?.viewControllers?.first as! MainTableViewController
        
        return mainTableVC.persons
    }
}
