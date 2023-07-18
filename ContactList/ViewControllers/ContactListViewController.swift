//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Бийбол Зулпукаров on 10/7/23.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var people: [Person] = []
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = people[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailsVC.person = people[indexPath.row]
        }
    }
}

