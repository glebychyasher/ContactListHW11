//
//  ViewController.swift
//  ContactListHW11
//
//  Created by Глеб Зобнин on 26.10.2023.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let persons = Person.getPersons()
        print(persons)
    }


}

