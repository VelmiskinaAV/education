//
//  HeaderCell.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func bind() {
        label.text = "Список сотрудников"
    }
}
