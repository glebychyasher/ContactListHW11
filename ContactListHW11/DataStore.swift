//
//  DataStore.swift
//  ContactListHW11
//
//  Created by Глеб Зобнин on 30.10.2023.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names: Set<String> = ["James",
                              "Bruce",
                              "Kevin",
                              "Li",
                              "Elena",
                              "Ksenia"]
    
    let surnames: Set<String> = ["Cook",
                                 "Flint",
                                 "Jones",
                                 "McKinsey",
                                 "Shan",
                                 "Friderigi"]
    let phones: Set<String> = ["89456789032",
                               "567896542987",
                               "234567890123",
                               "345678123445",
                               "88005553535",
                               "891617211315"]
    let emails: Set<String> = ["kuzya2001@gmail.com",
                               "qwerty1234@icloud.com",
                               "lutik765@mail.ru",
                               "dsds22@yandex.ru",
                               "asdf789@we.com",
                               "venikdlyapola@outlook.com"]
    
    static var count: Int {
        let countsSet: Set<Int> = [shared.names.count, shared.surnames.count, shared.emails.count, shared.phones.count]
        if countsSet.count == 1 {
            return countsSet.first ?? -1
        } else {
            return -1
        }
    }
    
    private init() {}
}

