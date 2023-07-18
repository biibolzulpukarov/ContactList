//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Бийбол Зулпукаров on 10/7/23.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var personEmailLabel: UILabel!
    @IBOutlet var personPhoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        personEmailLabel.text = person.email
        personPhoneNumberLabel.text = person.phoneNumber
    }

}
