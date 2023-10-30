//
//  TabBarController.swift
//  ContactListHW11
//
//  Created by Глеб Зобнин on 28.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getPersons()
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let contactsTableVC = navigationVC.visibleViewController as? ContactsTableViewController {
                    contactsTableVC.contactList = persons
                } else if let contactsDetailsVC = navigationVC.visibleViewController as? ContactDetailsViewController {
                    contactsDetailsVC.contactList = persons
                } else {
                    return
                }
            }
        }
    }
}
