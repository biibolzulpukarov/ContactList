//
//  TabBarController.swift
//  ContactList
//
//  Created by Бийбол Зулпукаров on 19/7/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableViewControllers()
    }
    
    private func setUpTableViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionsViewController else { return }
        
        let people = Person.getContactList()
        contactListVC.people = people
        sectionsVC.people = people
    }

}
