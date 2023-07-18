//
//  DataStore.swift
//  ContactList
//
//  Created by Бийбол Зулпукаров on 10/7/23.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    let names = ["Alex", "Will", "Bob", "Kate", "Lari", "Kyren"]
    let surnames = ["Willson", "Smith", "Black", "Brown", "White", "Holland"]
    let emails = ["qwerty@mail.ru", "asdfg@mail.ru", "zxcvb@mail.ru", "uiop@mail.ru", "jkl@mail.ru", "nm@mail.ru"]
    let phoneNumbers = ["777557667", "755468323", "766429532", "748423432", "795423543", "795543905"]
    
    private init() {}
}
