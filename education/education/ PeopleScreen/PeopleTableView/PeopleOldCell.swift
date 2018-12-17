//
//  PeopleOldCell.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit

class PeopleOldCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    func bind(name: String, age: UInt) {
        label.text = name + " " + String(age)
    }
}
