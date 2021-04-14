//
//  MainTableViewController.swift
//  PersonsListApp
//
//  Created by Vladislav on 10.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let persons = Person.returnAllPersons()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].firstName + " " + persons[indexPath.row].lastName

        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
		let detailVC = segue.destination as! DetailViewController
        detailVC.personDetail = persons[indexPath.row]
    }

}
