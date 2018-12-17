//
//  FirstLetterCell.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit

class FirstLetterCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func bind(letter: Character) {
        label.text = String(letter)
    }
}
