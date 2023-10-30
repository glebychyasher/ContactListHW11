//
//  Person.swift
//  ContactListHW11
//
//  Created by Глеб Зобнин on 26.10.2023.
//

import Foundation

struct Person: Hashable {
    let id: UUID
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    
}

extension Person {
    static func getPersons() -> [Person] {
        let dsNames = Array(DataStore.shared.names)
        let dsSurnames = Array(DataStore.shared.surnames)
        let dsPhones = Array(DataStore.shared.phones)
        let dsEmails = Array(DataStore.shared.emails)
        var persons: [Person] = []
        let dsCount = DataStore.count
        if dsCount == -1 {
            return []
        }
        for index in 0..<dsCount {
            persons.append(
                Person(id: UUID(),
                       name: dsNames[index],
                       surname: dsSurnames[index],
                       phone: dsPhones[index],
                       email: dsEmails[index])
            )
        }
        return persons
    }
}
