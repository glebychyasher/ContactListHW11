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

private class DataStore {
    var names: Set<String>
    var surnames: Set<String>
    var phones: Set<String>
    var emails: Set<String>
    var count: Int {
        let countsSet: Set<Int> = [names.count, surnames.count, emails.count, phones.count]
        if countsSet.count == 1 {
            return countsSet.first ?? -1
        } else {
            return -1
        }
    }
    
    init() {
        names = ["James", 
                 "Bruce",
                 "Kevin",
                 "Li",
                 "Elena",
                 "Ksenia"]
        surnames = ["Cook",
                    "Flint",
                    "Jones",
                    "McKinsey",
                    "Shan",
                    "Friderigi"]
        phones = ["89456789032",
                  "567896542987",
                  "234567890123",
                  "345678123445",
                  "88005553535",
                  "891617211315"]
        emails = ["kuzya2001@gmail.com",
                  "qwerty1234@icloud.com",
                  "lutik765@mail.ru",
                  "dsds22@yandex.ru",
                  "asdf789@we.com",
                  "venikdlyapola@outlook.com"]
    }
}

extension Person {
    static func getPersons() -> Set<Person> {
        let dataStore = DataStore()
        var persons: Set<Person> = []
        let dsCount = dataStore.count
        if dsCount == -1 {
            return []
        }
        for _ in 0..<dsCount {
            persons.insert(
                Person(id: UUID(),
                       name: dataStore.names.removeFirst(),
                       surname: dataStore.surnames.removeFirst(),
                       phone: dataStore.phones.removeFirst(),
                       email: dataStore.emails.removeFirst())
            )
        }
        return persons
    }
}
