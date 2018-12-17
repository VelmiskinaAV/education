//
//  PeopleMiddleCell.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit

class PeopleMiddleCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    var closure: ((Int) -> ())?
    
    func bind(element: MiddleCell) {
        label.text = element.name + " " + String(element.age)
        id = element.id
    }
    
    @IBAction func didTap(_ sender: Any) {
        closure?(id)
    }
    
    private var id: Int!
}
